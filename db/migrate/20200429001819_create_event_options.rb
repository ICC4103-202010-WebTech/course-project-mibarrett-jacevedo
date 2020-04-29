class CreateEventOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :event_options do |t|
      t.references :event, null: false, foreign_key: true
      t.string :day

      t.timestamps
    end
  end
end
