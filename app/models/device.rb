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

  def latest_signal_strength
    devices_scanner = self.devices_scanners.order('timestamp DESC').first

    devices_scanner.present? ? devices_scanner.signal_strength : ""
  end


  def latest_signal_datetime
    devices_scanner = self.devices_scanners.order('timestamp DESC').first

    devices_scanner.present? ? devices_scanner.timestamp : ""
  end
end
