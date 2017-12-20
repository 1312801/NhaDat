class AddPaymentOnToOrderTransaction < ActiveRecord::Migration[5.1]
  def change
    add_reference :order_transactions, :payment, foreign_key: true
  end
end
