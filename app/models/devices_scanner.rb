class DevicesScanner < ApplicationRecord
  belongs_to :device
  belongs_to :scanner

  validates :device_id, uniqueness: {scope: [:scanner_id, :timestamp_integer] }
end
