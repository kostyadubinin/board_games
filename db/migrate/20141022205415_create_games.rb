class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :players_min
      t.integer :players_max
      t.integer :age
      t.string :playing_time

      t.timestamps
    end
  end
end
