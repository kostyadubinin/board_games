class AddPlayingTimeMinAndPlayingTimeMaxToGame < ActiveRecord::Migration
  def change
    add_column :games, :playing_time_min, :integer
    add_column :games, :playing_time_max, :integer
  end
end
