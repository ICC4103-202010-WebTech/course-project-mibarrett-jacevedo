class AddPrivOrPubToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :privorpub, :integer
  end
end
