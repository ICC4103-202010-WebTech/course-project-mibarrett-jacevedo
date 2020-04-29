class AddEventOptionToEventVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_votes, :event_option, null: true, foreign_key: true
  end
end
