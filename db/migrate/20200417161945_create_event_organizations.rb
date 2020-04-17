class CreateEventOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :event_organizations do |t|
      t.references :event, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.integer :priv_or_pub

      t.timestamps
    end
  end
end
