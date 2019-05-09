class AddIndexToDevices < ActiveRecord::Migration[5.2]
  def change
    add_index :devices, :mac_address
    add_index :devices, :device_type
  end
end
