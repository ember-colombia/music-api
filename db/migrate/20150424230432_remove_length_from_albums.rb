class RemoveLengthFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :length, :integer
  end
end
