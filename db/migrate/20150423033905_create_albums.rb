class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.date :published_at
      t.string :cover_url
      t.integer :length
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
