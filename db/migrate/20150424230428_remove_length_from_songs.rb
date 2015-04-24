class RemoveLengthFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :length, :integer
  end
end
