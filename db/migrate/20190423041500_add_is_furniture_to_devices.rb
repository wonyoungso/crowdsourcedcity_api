class AddIsFurnitureToDevices < ActiveRecord::Migration[5.2]
  def change
    add_column :devices, :is_furniture, :boolean, :default => false
  end
end
