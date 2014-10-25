class AddColumnsToGame < ActiveRecord::Migration
  def change
    add_column :games, :published_at, :datetime
    add_column :games, :website, :string
    add_column :games, :bgg_link, :string
    add_column :games, :wikipedia_link, :string
  end
end
