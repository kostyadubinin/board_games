# TODO: create presenter with default picture
class Game < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  paginates_per 18

  has_many :pictures
  validates :name, presence: true
end
