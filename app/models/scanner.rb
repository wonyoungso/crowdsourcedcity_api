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

    scanner = Scanner.where(device_id: device_data["d"]).first
    unless scanner.present?
      scanner = Scanner.new
      scanner.device_id = device_data["d"]
      scanner.save
    end

    # puts device_data
    device_data[:s].each do |k, v|
      v.each do |mac_address, strength|
        device = Device.where(mac_address: )
        puts "type: #{k} #{mac_address}: #{strength}"
      end

    end

  end
  
end
