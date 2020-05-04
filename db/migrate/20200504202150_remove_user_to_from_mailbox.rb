class RemoveUserToFromMailbox < ActiveRecord::Migration[6.0]
  def change
    remove_column :mailboxes, :message, :references
  end
end
