class AddYoutubeLinkToGames < ActiveRecord::Migration
  def change
    add_column :games, :youtube_link, :string
  end
end
