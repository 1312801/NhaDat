class RemovePaypalUserTokenFromPayment < ActiveRecord::Migration[5.1]
  def change
    remove_column :payments, :paypal_user_token, :string
  end
end
