class RemoveEventNameFromEventVote < ActiveRecord::Migration[6.0]
  def change
    remove_reference :event_votes, :event, null: false, foreign_key: true
  end
end
