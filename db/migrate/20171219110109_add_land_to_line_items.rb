class AddLandToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :line_items, :land, foreign_key: true
  end
end
