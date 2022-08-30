class ChangePriceFormatOnArtworks < ActiveRecord::Migration[7.0]
  def change
    change_column :artworks, :price, :decimal, precision: 8, scale: 2
  end
end
