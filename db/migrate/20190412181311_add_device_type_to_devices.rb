class AddDeviceTypeToDevices < ActiveRecord::Migration[5.2]
  def change
    add_column :devices, :device_type, :string
  end
end
