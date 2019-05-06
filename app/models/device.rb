class Device < ApplicationRecord
  has_many :devices_scanners, dependent: :destroy
  has_many :scanners, :through => :devices_scanners

  validates :mac_address, :uniqueness => true, :presence => true

  def showup_time
    devices_scanners = self.devices_scanners.order('timestamp ASC')

    start = devices_scanners.first.timestamp.in_time_zone("Eastern Time (US & Canada)").strftime("%Y-%m-%d %H:%M:%S")
    ended = devices_scanners.last.timestamp.in_time_zone("Eastern Time (US & Canada)").strftime("%H:%M:%S")
      
    "#{start} - #{ended}"
  end

  def average_scanner_strength(scanner_name, from_date, to_date)
    scanner = Scanner.where(device_id: scanner_name).first
    
    begin 
      self.devices_scanners.where(scanner_id: scanner.id, timestamp: DateTime.parse(from_date).change(:offset => "-0400")..DateTime.parse(to_date).change(:offset => "-0400")).sum(:signal_strength) / self.devices_scanners.where(scanner_id: scanner.id, timestamp: DateTime.parse(from_date).change(:offset => "-0400")..DateTime.parse(to_date).change(:offset => "-0400")).count
    rescue
      0
    end
  end


  def latest_signal_strength
    devices_scanner = self.devices_scanners.order('timestamp DESC').first

    devices_scanner.present? ? devices_scanner.signal_strength : ""
  end


  def latest_signal_datetime
    devices_scanner = self.devices_scanners.order('timestamp DESC').first

    devices_scanner.present? ? devices_scanner.timestamp : nil
  end
end
