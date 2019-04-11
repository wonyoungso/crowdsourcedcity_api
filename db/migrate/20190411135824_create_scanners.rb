class CreateScanners < ActiveRecord::Migration[5.2]
  def change
    create_table :scanners do |t|
      t.text :name
      t.text :mac_address
      t.timestamps
    end
  end
end
