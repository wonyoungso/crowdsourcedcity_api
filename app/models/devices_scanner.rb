class DevicesScanner < ApplicationRecord
  belongs_to :device
  belongs_to :scanner

  validates :device_id, uniqueness: {scope: [:scanner_id, :timestamp_integer] }

  
  def self.find_all_devices_around_time(devices_scanners, timestamp)
    

    result = {
      timestamp: timestamp,
      devices: []
    }

    devices_scanners.order("timestamp DESC, device_id DESC").each do |devices_scanner|

      device = devices_scanner.device
      device_data = result[:devices].find {|d| d[:id] == device.id }

      unless device_data.present?
        device_data = {
          id: device.id,
          type: device.device_type,
          # mac_address: device.mac_address,
          is_furniture: device.is_furniture,
          signal_strengths: []
        }

        result[:devices] << device_data
      end

      

      signal_strength = device_data[:signal_strengths].find {|d| d[:scanner_id] == devices_scanner.scanner_id }

      unless signal_strength.present? 
        device_data[:signal_strengths] << {
          scanner_id: devices_scanner.scanner_id,
          scanner_name: devices_scanner.scanner.device_id,
          timestamp: devices_scanner.timestamp_integer,
          strength: devices_scanner.signal_strength
        }
      else
        if signal_strength[:timestamp] < devices_scanner.timestamp_integer
          signal_strength[:timestamp] = devices_scanner.timestamp_integer
          signal_strength[:strength] = devices_scanner.signal_strength
        end
      end

    end
      
    sensor_list = Scanner.order('device_id ASC').map {|s| [s.pos_x, s.pos_y]}
    sensorX = sensor_list.map {|s| s[0] }
    sensorY = sensor_list.map {|s| s[1] }

    result[:devices] = result[:devices].filter {|d| d[:signal_strengths].length >= 3} 
    
    result[:devices].each do |d|
      d[:signal_strengths] = d[:signal_strengths].sort {|a, b| a[:scanner_name] <=> b[:scanner_name]}
      
      rssiList = d[:signal_strengths].map {|d| d[:strength] }
      d[:coordinates] = Scanner.calculate_coordinate(sensorX, sensorY, rssiList, d[:type])
    end

      
    result

  end

end
