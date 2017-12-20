class AddCartToPayments < ActiveRecord::Migration[5.1]
  def change
    add_reference :payments, :cart, foreign_key: true
  end
end
