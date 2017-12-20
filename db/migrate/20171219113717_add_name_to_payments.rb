class AddNameToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :firstname, :string
    add_column :payments, :lastname, :string
  end
end
