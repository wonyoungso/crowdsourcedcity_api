class AddIndexToSdevicesScanners < ActiveRecord::Migration[5.2]
  def change
    add_index :devices_scanners, :device_id
    add_index :devices_scanners, :scanner_id
  end
end
