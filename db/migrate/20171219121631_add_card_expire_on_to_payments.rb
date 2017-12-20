class AddCardExpireOnToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :card_expires_on, :date
  end
end
