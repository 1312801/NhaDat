class AddExpressTokenToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :express_token, :string
    add_column :payments, :express_payer_id, :string
  end
end
