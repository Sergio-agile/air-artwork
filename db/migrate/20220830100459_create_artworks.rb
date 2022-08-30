class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :decription
      t.decimal :price
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
