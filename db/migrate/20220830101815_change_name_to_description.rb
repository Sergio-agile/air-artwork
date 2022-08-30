class ChangeNameToDescription < ActiveRecord::Migration[7.0]
  def change
    rename_column :artworks, :decription, :description
  end
end
