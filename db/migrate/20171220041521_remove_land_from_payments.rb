class RemoveLandFromPayments < ActiveRecord::Migration[5.1]
  def change
    remove_reference :payments, :land, foreign_key: true
  end
end
