class RemoveImageFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :image, :string
  end
end
