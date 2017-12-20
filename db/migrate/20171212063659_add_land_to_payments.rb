class AddLandToPayments < ActiveRecord::Migration[5.1]
  def change
    add_reference :payments, :land, foreign_key: true
  end
end
