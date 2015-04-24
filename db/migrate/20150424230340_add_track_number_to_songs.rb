class AddTrackNumberToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :track_number, :integer
  end
end
