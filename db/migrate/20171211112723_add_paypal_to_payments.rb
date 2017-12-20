class AddPaypalToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :paypal_user_token, :string
    add_column :payments, :paypal_recurring_profile_token, :string
  end
end
