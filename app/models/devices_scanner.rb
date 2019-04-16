class DevicesScanner < ApplicationRecord
  belongs_to :device
  belongs_to :scanner

  validates :device_id, uniqueness: {scope: [:scanner_id, :timestamp_integer] }

  
  def self.find_all_devices_around_time(timestamp)
    
    timestamp_start = timestamp - 40000
    timestamp_end = timestamp + 40000

    devices_scanners = DevicesScanner.where(timestamp_integer: timestamp_start...timestamp_end)

    result = {
      timestamp: timestamp,
      devices: []
    }

    devices_scanners.each do |devices_scanner|

      device = devices_scanner.device
      device_data = result[:devices].find {|d| d[:mac_address] == device.mac_address }

      unless device_data.present?
        device_data = {
          mac_address: device.mac_address,
          signal_strengths: []
        }

        result[:devices] << device_data
      end

      

      signal_strength = device_data[:signal_strengths].find {|d| d[:scanner_id] == devices_scanner.scanner_id }

      unless signal_strength.present? 
        device_data[:signal_strengths] << {
          scanner_id: devices_scanner.scanner_id,
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


    result

  end

end
