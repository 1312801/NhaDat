class AddIdToConversations < ActiveRecord::Migration[5.1]
  def change
    add_column :conversations, :author_id, :integer
    add_index :conversations, :author_id
    add_column :conversations, :receiver_id, :integer
    add_index :conversations, :receiver_id
  end
end
