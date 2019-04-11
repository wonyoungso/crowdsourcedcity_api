class CreateDevicesScanners < ActiveRecord::Migration[5.2]
  def change
    create_table :devices_scanners do |t|
      t.integer :device_id
      t.integer :scanner_id
      t.datetime :timestamp
      t.float :signal_strength

      t.timestamps
    end
  end
end
