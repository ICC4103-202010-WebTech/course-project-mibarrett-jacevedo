class RemoveStartingDayFRomEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :starting_vote_day, :date
  end
end
