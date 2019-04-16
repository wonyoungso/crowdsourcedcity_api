require 'matrix'

class Scanner < ApplicationRecord # scanner: Raspberry Pi
  has_many :devices_scanners, dependent: :destroy
  has_many :devices, :through => :devices_scanners

  validates :device_id, :presence => true, :uniqueness => true

  A = 28.0    #45-49 Recommended
  N = 3.0   #3.25-4.5 Recommended
  
  def self.parse_data(device_data)
    # device_data = {  
    #     "d":"DEVICE_1",
    #     "f":"FAMILY",
    #     "t":1520424248897,
    #     "l":"LOCATION",
    #     "s":{  
    #         "bluetooth":{  
    #           "20:25:64:b7:91:42":-23,
    #           "20:25:64:b8:06:38":-44,    
    #         },
    #         "wifi":{  
    #           "20:25:64:b7:91:40":-22,
    #           "70:4d:7b:11:3a:c8":-52,
    #           "88:d7:f6:a7:2a:4c":-43,
    #           "8c:0f:6f:e7:2b:78":-32,
    #           "8c:0f:6f:e7:2b:80":-65,
    #           "92:0f:6f:e7:2b:80":-75,
    #           "96:0f:6f:e7:2b:78":-98,
    #           "9e:0f:6f:e7:2b:80":-23,
    #           "ac:9e:17:7f:38:a4":-11,
    #           "dc:fe:07:79:aa:c0":-22,
    #           "dc:fe:07:79:aa:c3":-23
    #         }
    #     },
    #     "gps":{
    #         "lat":12.1,
    #         "lon":10.1,
    #         "alt":54
    #     }
    #   }
    scanner = Scanner.find_or_create_by(device_id: device_data[:d])
    scanner_id = scanner.id

        
    # puts device_data
    device_data[:s].each do |k, v|
      v.each do |mac_address, strength|
        device = Device.find_or_create_by(mac_address: mac_address, device_type: k)
        device_id = device.id
        time_integer = device_data[:t]
        # strength = strength
        timestamp = Time.at(time_integer / 1000).to_datetime
        puts "scanner_id: #{scanner_id} device_id: #{device_id} time_integer: #{device_data[:t]} timestamp: #{timestamp} strength: #{strength}"

        devices_scanner = DevicesScanner.new
        devices_scanner.device_id = device_id
        devices_scanner.scanner_id = scanner_id
        devices_scanner.timestamp = timestamp
        devices_scanner.timestamp_integer = time_integer
        devices_scanner.signal_strength = strength
        devices_scanner.save 
      end

    end

  end

  def self.calculate_distance(rssi)

    mi = (rssi.abs - A)/(10 * N)
    return 10.0 ** mi.to_f

  end

  def self.calculate_coordinate(sensorX, sensorY, rssiList)
    # rssiList = [-52, -46, -48]
    # {'a': -52, 'b': -48, 'c': -46}
    # sensorPositions={"a":[2,3.29],"c":[6.35,2.1],"b":[6.35,9.5]}

    distance = []

    rssiList.each do |rssi|
      distance << calculate_distance(rssi)
    end

    matrixA = Matrix[[0, 0]]
    matrixB = Matrix[[0]]
    lx = distance.length
    (0..distance.length - 2).each do |i|
      objA=[2*(sensorX[i]-sensorX[lx-1]),2 * (sensorY[i] - sensorY[lx - 1])]
      objB=[sensorX[i]*sensorX[i]-sensorX[lx - 1]*sensorX[lx - 1] + sensorY[i] * sensorY[i] - sensorY[lx - 1] * sensorY[lx - 1] + distance[lx - 1] * distance[lx - 1] - distance[i]*distance[i]]
      if i == 0 
        matrixA = Matrix[objA]
        matrixB = Matrix[objB]
      else
        matrixA = Matrix.vstack(matrixA, Matrix[objA])
        matrixB = Matrix.vstack(matrixB, Matrix[objB])
      end
      
    end

    answer = (matrixA.transpose * matrixA).inverse * matrixA.transpose * matrixB
    return answer.to_a.flatten
  end
  
end
