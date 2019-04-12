class RearrangeScannersDevices < ActiveRecord::Migration[5.2]
  def up
    remove_column :scanners, :mac_address
    remove_column :devices,  :device_id
    
    add_column :scanners, :device_id, :text
    add_column :devices, :mac_address, :text
  end

  def down
    remove_column :scanners, :device_id
    remove_column :devices, :mac_address

    add_column :scanners, :mac_address, :text
    add_column :devices,  :device_id, :text
  end
end
