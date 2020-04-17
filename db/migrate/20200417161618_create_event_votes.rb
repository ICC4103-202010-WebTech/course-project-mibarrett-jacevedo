class CreateEventVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :event_votes do |t|
      t.references :event, null: false, foreign_key: true
      t.integer :day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
