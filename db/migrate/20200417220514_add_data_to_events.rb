class AddDataToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :description, :text
    add_column :events, :location, :string
    add_column :events, :starting_vote_day, :date
  end
end
