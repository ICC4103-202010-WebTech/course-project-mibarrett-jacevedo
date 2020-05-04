class RemoveUserFromFromMailbox < ActiveRecord::Migration[6.0]
  def change
    remove_column :mailboxes, :user_from_id, :references
  end
end
