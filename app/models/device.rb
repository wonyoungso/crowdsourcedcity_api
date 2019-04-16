class Device < ApplicationRecord
  has_many :devices_scanners, dependent: :destroy
  has_many :scanners, :through => :devices_scanners

  validates :mac_address, :uniqueness => true, :presence => true

  def showup_time
    devices_scanners = self.devices_scanners.order('timestamp DESC')

    start = devices_scanners.first.timestamp.strftime("%Y-%m-%d %H:%M:%S")
    ended = devices_scanners.last.timestamp.strftime("%H:%M:%S")
      
    "#{start} - #{ended}"
  end

end
