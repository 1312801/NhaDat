class AddDateToLands < ActiveRecord::Migration[5.1]
  def change
    add_column :lands, :datestart, :date
    add_column :lands, :dateend, :date
  end
end
