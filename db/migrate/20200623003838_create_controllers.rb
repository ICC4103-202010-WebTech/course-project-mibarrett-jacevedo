class CreateControllers < ActiveRecord::Migration[6.0]
  def change
    create_table :controllers do |t|
      t.string :Report

      t.timestamps
    end
  end
end
