class AddUserToLands < ActiveRecord::Migration[5.1]
  def change
    add_reference :lands, :user, foreign_key: true
  end
end
