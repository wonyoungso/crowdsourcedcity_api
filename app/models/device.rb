class Device < ApplicationRecord
  has_many :devices_scanners
  has_many :scanners, :through => :devices_scanners

end
