class CreateMailboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :mailboxes do |t|
      t.references :user_from, null: false, foreign_key: true
      t.string :message
      t.references :user_to, null: false, foreign_key: true

      t.timestamps
    end
  end
end
