class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.references :user
      t.references :comment
      t.string :message

      t.timestamps
    end
  end
end
