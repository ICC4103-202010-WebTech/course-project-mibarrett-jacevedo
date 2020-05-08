class AddUserToMailbox < ActiveRecord::Migration[6.0]
  def change
    add_reference :mailboxes, :user, foreign_key: true
  end
end
