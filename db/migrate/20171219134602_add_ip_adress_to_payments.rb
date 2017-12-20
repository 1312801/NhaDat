class AddIpAdressToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :ip_address, :string
  end
end
