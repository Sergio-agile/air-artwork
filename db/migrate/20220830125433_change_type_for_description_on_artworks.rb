class ChangeTypeForDescriptionOnArtworks < ActiveRecord::Migration[7.0]
  def change
    change_column(:artworks, :description, :text)
  end
end
