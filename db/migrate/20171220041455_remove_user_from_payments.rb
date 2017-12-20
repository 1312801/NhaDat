class RemoveUserFromPayments < ActiveRecord::Migration[5.1]
  def change
    remove_reference :payments, :user, foreign_key: true
  end
end
