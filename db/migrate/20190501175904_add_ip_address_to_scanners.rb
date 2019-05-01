class AddIpAddressToScanners < ActiveRecord::Migration[5.2]
  def change
    add_column :scanners, :ip_address, :string
  end
end
