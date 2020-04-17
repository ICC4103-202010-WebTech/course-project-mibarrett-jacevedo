class AddDataToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :description, :text
  end
end
