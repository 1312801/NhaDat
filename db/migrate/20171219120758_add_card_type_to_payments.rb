class AddCardTypeToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :card_type, :string
  end
end
