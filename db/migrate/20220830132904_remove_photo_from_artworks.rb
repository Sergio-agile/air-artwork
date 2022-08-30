class RemovePhotoFromArtworks < ActiveRecord::Migration[7.0]
  def change
    remove_column :artworks, :photo
  end
end
