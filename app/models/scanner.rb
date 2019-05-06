require 'matrix'

class Scanner < ApplicationRecord # scanner: Raspberry Pi
  has_many :devices_scanners, dependent: :destroy
  has_many :devices, :through => :devices_scanners

  validates :device_id, :presence => true, :uniqueness => true

  A_wifi = 53.8    #45-49 Recommended
  N_wifi = 2.67   #3.25-4.5 Recommended
  
  A_bluetooth = 76.8495
  N_bluetooth = 1.93

  def conv_to_json
    {
      id: self.id,
      device_name: self.device_id,
      coordinates: [self.pos_x, self.pos_y]
    }
  end

  
  def self.parse_data(device_data, ip_address)
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
    puts device_data
    scanner = Scanner.find_or_create_by(device_id: device_data[:d])
    scanner.update_column(:ip_address, ip_address)
    scanner.update_column(:updated_at, DateTime.now)
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

  def self.calculate_distance_yuchen(rssi, device_type)
    a_final = device_type == "wifi" ? A_wifi : A_bluetooth
    n_final = device_type == "wifi" ? N_wifi : N_bluetooth

    mi = (rssi.abs - a_final)/(10 * n_final)
    return 10.0 ** mi.to_f
  end

  def self.calculate_distance(rssi, _txPower)

    # Yuchen's code
    # mi = (rssi.abs - A)/(10 * N)
    # return 10.0 ** mi.to_f

    # Sarah's suggested code

    txPower = _txPower.present? ? _txPower : -59 #hard coded power value. Usually ranges between -59 to -65
    
    if rssi == 0
      return -1.0
    end

    ratio = rssi * 1.0 / txPower

    if ratio < 1.0
    
      return ratio ** 10
    
    else
    
      distance =  (0.89976) * (ratio ** 7.7095) + 0.111;   
      return distance
    end

  end

  def self.calculate_coordinate(sensorX, sensorY, rssiList, device_type)
    # rssiList = [-52, -46, -48]
    # {'a': -52, 'b': -48, 'c': -46}
    # sensorPositions={"a":[2,3.29],"c":[6.35,2.1],"b":[6.35,9.5]}

    distance = []

    rssiList.each do |rssi|
      distance << calculate_distance_yuchen(rssi, device_type)
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
