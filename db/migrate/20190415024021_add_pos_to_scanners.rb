class AddPosToScanners < ActiveRecord::Migration[5.2]
  def change
    add_column :scanners, :pos_x, :float, :default => 0
    add_column :scanners, :pos_y, :float, :default => 0
  end
end
