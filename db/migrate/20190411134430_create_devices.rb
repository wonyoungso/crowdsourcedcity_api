class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.text :name
      t.text :device_id

      t.timestamps
    end
  end
end
