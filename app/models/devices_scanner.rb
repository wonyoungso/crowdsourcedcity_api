class DevicesScanner < ApplicationRecord
  belongs_to :device
  belongs_to :scanner
end
