class RemoveDayOptionFromEventVote < ActiveRecord::Migration[6.0]
  def change

    remove_column :event_votes, :day, :integer
  end
end
