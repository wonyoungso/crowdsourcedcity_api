class Scanner < ApplicationRecord # scanner: Raspberry Pi
  has_many :devices_scanners
  has_many :devices, :through => :devices_scanners


  def self.parse_data(device_data)
    # {  
    #   "d":"DEVICE",
    #   "f":"FAMILY",
    #   "t":1520424248897,
    #   "l":"LOCATION",
    #   "s":{  
    #       "bluetooth":{  
    #         "20:25:64:b7:91:42":-72,
    #         "20:25:64:b8:06:38":-81,    
    #       },
    #       "wifi":{  
    #         "20:25:64:b7:91:40":-73,
    #         "70:4d:7b:11:3a:c8":-81,
    #         "88:d7:f6:a7:2a:4c":-39,
    #         "8c:0f:6f:e7:2b:78":-42,
    #         "8c:0f:6f:e7:2b:80":-43,
    #         "92:0f:6f:e7:2b:80":-43,
    #         "96:0f:6f:e7:2b:78":-39,
    #         "9e:0f:6f:e7:2b:80":-43,
    #         "ac:9e:17:7f:38:a4":-55,
    #         "dc:fe:07:79:aa:c0":-90,
    #         "dc:fe:07:79:aa:c3":-89
    #       }
    #   },
    #   "gps":{
    #       "lat":12.1,
    #       "lon":10.1,
    #       "alt":54
    #   }
    # }


  end
  
end
