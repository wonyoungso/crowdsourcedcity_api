class AddTimestampIntegerToDevicesScanners < ActiveRecord::Migration[5.2]
  def change
    add_column :devices_scanners, :timestamp_integer, :integer, :limit => 8
  end
end
