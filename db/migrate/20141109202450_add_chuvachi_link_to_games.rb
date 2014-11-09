class AddChuvachiLinkToGames < ActiveRecord::Migration
  def change
    add_column :games, :chuvachi_link, :string
  end
end
