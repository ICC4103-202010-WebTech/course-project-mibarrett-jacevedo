class RemoveUserToFromMailbox < ActiveRecord::Migration[6.0]
  def change
     remove_column :mailboxes, :user_to_id, :references
  end
end
