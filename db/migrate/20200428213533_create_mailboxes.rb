class CreateMailboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :mailboxes do |t|
      t.integer :user_from
      t.string :message
      t.integer :user_to

      t.timestamps
    end
  end
end
