class AddEventOptionToEventVote < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_votes, :event_option, null: false,  foreign_key: true
  end
end
