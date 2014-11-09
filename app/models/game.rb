# TODO: create presenter with default picture
class Game < ActiveRecord::Base
  paginates_per 18

  has_many :pictures
  validates :name, presence: true

  def self.order_by_players(direction)
    order(players_min: direction, players_max: direction)
  end

  def self.order_by_playing_time(direction)
    order(playing_time_min: direction, playing_time_max: direction)
  end

  rails_admin do
    list do
      configure :id do
        column_width 25
      end

      configure :players_min do
        column_width 90
      end

      configure :players_max do
        column_width 90
      end

      configure :playing_time_min do
        label 'Time Min'
        column_width 80
      end

      configure :playing_time_max do
        label 'Time Max'
        column_width 80
      end

      configure :age do
        column_width 50
      end

      configure :published_at do
        column_width 100
      end

      exclude_fields :created_at, :updated_at, :description, :website, :bgg_link,
        :wikipedia_link, :pictures
    end

    edit do
      exclude_fields :created_at, :updated_at
    end
  end
end
