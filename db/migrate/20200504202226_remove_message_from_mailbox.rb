class RemoveMessageFromMailbox < ActiveRecord::Migration[6.0]
  def change
     remove_column :mailboxes, :message, :string
  end
end
