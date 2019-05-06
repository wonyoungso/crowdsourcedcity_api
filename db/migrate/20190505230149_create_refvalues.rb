class CreateRefvalues < ActiveRecord::Migration[5.2]
  def change
    create_table :refvalues do |t|
      t.string :day
      t.float :a_wifi
      t.float :n_wifi
      t.float :a_bluetooth
      t.float :n_bluetooth

      t.timestamps
    end
  end
end
