# TODO: create presenter with default picture
class Game < ActiveRecord::Base
  paginates_per 18

  has_many :pictures
  validates :name, presence: true
end
