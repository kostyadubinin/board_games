class RemovePlayingTimeFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :playing_time, :string
  end
end
