class Scanner < ApplicationRecord # scanner: Raspberry Pi
  has_many :devices_scanners
  has_many :devices, :through => :devices_scanners

  validates :device_id, :presence => true, :uniqueness => true

  def self.parse_data(device_data)
    device_data = {  
      "d":"DEVICE",
      "f":"FAMILY",
      "t":1520424248897,
      "l":"LOCATION",
      "s":{  
          "bluetooth":{  
            "20:25:64:b7:91:42":-72,
            "20:25:64:b8:06:38":-81,    
          },
          "wifi":{  
            "20:25:64:b7:91:40":-73,
            "70:4d:7b:11:3a:c8":-81,
            "88:d7:f6:a7:2a:4c":-39,
            "8c:0f:6f:e7:2b:78":-42,
            "8c:0f:6f:e7:2b:80":-43,
            "92:0f:6f:e7:2b:80":-43,
            "96:0f:6f:e7:2b:78":-39,
            "9e:0f:6f:e7:2b:80":-43,
            "ac:9e:17:7f:38:a4":-55,
            "dc:fe:07:79:aa:c0":-90,
            "dc:fe:07:79:aa:c3":-89
          }
      },
      "gps":{
          "lat":12.1,
          "lon":10.1,
          "alt":54
      }
    }

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
  
end
