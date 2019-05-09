class AddIndexToScanners < ActiveRecord::Migration[5.2]
  def change
    add_index :scanners, :device_id
  end
end
