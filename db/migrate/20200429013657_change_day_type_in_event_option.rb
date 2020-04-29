class ChangeDayTypeInEventOption < ActiveRecord::Migration[6.0]
  def change
    change_column :event_options, :day, :datetime
  end
end
