class RemovePaypalRecurringProfileTokenFromPayment < ActiveRecord::Migration[5.1]
  def change
    remove_column :payments, :paypal_recurring_profile_token, :string
  end
end
