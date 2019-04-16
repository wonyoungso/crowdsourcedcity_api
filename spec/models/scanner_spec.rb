require 'rails_helper'

RSpec.describe Scanner, type: :model do
  context 'adding observations' do 

    it 'could first observations' do
      first_data = {  
        "d":"DEVICE_1",
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

      Scanner.parse_data(first_data)

      expect(Scanner.count).to eq(1)
      expect(Device.count).to eq(13)

    end

    it 'could add second observations' do
      
      start_time = DateTime.now.to_i * 1000 - 90000

      device_1_first_data = {  
        "d":"DEVICE_1",
        "f":"FAMILY",
        "t":start_time,
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

      device_2_first_data = {  
        "d":"DEVICE_2",
        "f":"FAMILY",
        "t":start_time + 10000,
        "l":"LOCATION",
        "s":{  
            "bluetooth":{  
              "20:25:64:b7:91:42":-12,
              "20:25:64:b8:06:38":-22,    
            },
            "wifi":{  
              "20:25:64:b7:91:40":-55,
              "70:4d:7b:11:3a:c8":-23,
              "88:d7:f6:a7:2a:4c":-33,
              "8c:0f:6f:e7:2b:78":-12,
              "8c:0f:6f:e7:2b:80":-55,
              "92:0f:6f:e7:2b:80":-59,
              "96:0f:6f:e7:2b:78":-58,
              "9e:0f:6f:e7:2b:80":-83,
              "ac:9e:17:7f:38:a4":-21,
              "dc:fe:07:79:aa:c0":-12,
              "dc:fe:07:79:aa:c3":-32
            }
        },
        "gps":{
            "lat":12.1,
            "lon":10.1,
            "alt":54
        }
      }

      device_3_first_data = {  
        "d":"DEVICE_3",
        "f":"FAMILY",
        "t":start_time + 15000,
        "l":"LOCATION",
        "s":{  
            "bluetooth":{  
              "20:25:64:b7:91:42":-52,
              "20:25:64:b8:06:38":-42,    
            },
            "wifi":{  
              "20:25:64:b7:91:40":-25,
              "70:4d:7b:11:3a:c8":-83,
              "88:d7:f6:a7:2a:4c":-53,
              "8c:0f:6f:e7:2b:78":-52,
              "8c:0f:6f:e7:2b:80":-85,
              "92:0f:6f:e7:2b:80":-92,
              "96:0f:6f:e7:2b:78":-12,
              "9e:0f:6f:e7:2b:80":-22,
              "ac:9e:17:7f:38:a4":-54,
              "dc:fe:07:79:aa:c0":-87,
              "dc:fe:07:79:aa:c3":-24
            }
        },
        "gps":{
            "lat":12.1,
            "lon":10.1,
            "alt":54
        }
      }


      device_1_second_data_within_range = {  
        "d":"DEVICE_1",
        "f":"FAMILY",
        "t":start_time + 15000,
        "l":"LOCATION",
        "s":{  
            "bluetooth":{  
              "20:25:64:b7:91:42":-62,
              "20:25:64:b8:06:38":-22,    
            },
            "wifi":{  
              "20:25:64:b7:91:40":-25,
              "70:4d:7b:11:3a:c8":-33,
              "88:d7:f6:a7:2a:4c":-43,
              "8c:0f:6f:e7:2b:78":-52,
              "8c:0f:6f:e7:2b:80":-25,
              "92:0f:6f:e7:2b:80":-32,
              "96:0f:6f:e7:2b:78":-22,
              "9e:0f:6f:e7:2b:80":-12,
              "ac:9e:17:7f:38:a4":-24,
              "dc:fe:07:79:aa:c0":-67,
              "dc:fe:07:79:aa:c3":-34
            }
        },
        "gps":{
            "lat":12.1,
            "lon":10.1,
            "alt":54
        }
      }
      

      device_1_second_data_without_range = {  
        "d":"DEVICE_1",
        "f":"FAMILY",
        "t":start_time + 105000,
        "l":"LOCATION",
        "s":{  
            "bluetooth":{  
              "20:25:64:b7:91:42":-22,
              "20:25:64:b8:06:38":-62,    
            },
            "wifi":{  
              "20:25:64:b7:91:40":-15,
              "70:4d:7b:11:3a:c8":-23,
              "88:d7:f6:a7:2a:4c":-73,
              "8c:0f:6f:e7:2b:78":-22,
              "8c:0f:6f:e7:2b:80":-15,
              "92:0f:6f:e7:2b:80":-12,
              "96:0f:6f:e7:2b:78":-62,
              "9e:0f:6f:e7:2b:80":-42,
              "ac:9e:17:7f:38:a4":-74,
              "dc:fe:07:79:aa:c0":-27,
              "dc:fe:07:79:aa:c3":-14
            }
        },
        "gps":{
            "lat":12.1,
            "lon":10.1,
            "alt":54
        }
      }
      
     

      Scanner.parse_data(device_1_first_data)
      Scanner.parse_data(device_2_first_data)
      Scanner.parse_data(device_3_first_data)
      Scanner.parse_data(device_1_second_data_within_range)
      Scanner.parse_data(device_1_second_data_without_range)

      scanner_first = Scanner.where(device_id: "DEVICE_1").first

      expect(Scanner.count).to eq(3)
      expect(Device.count).to eq(13)
      expect(DevicesScanner.count).to eq(13 * 5)

      devices = DevicesScanner.find_all_devices_around_time(start_time + 20000)
      # [
      #   { mac_address: "", signal_strength: [ {device_id: "", strength: "" }] }
      # ]

      devices[:devices].each do |d|
        expect(d[:signal_strengths].length).to eq(3)
      end

      devices = DevicesScanner.find_all_devices_around_time(start_time + 1800000)
      # [
      #   { mac_address: "", signal_strength: [ {device_id: "", strength: "" }] }
      # ]

      # devices[:devices].each do |d|
      #   expect(d[:signal_strengths].length).to eq(3)
      # end

      expect(devices[:devices].length).to eq(0)

      
      # puts devices.to_json
      
    end

  end
end
