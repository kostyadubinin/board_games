class RemovePublishedAtFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :published_at, :datetime
  end
end
