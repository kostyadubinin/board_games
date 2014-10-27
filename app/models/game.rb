class Game < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :name, presence: true
  # TODO: Remove this and create the default image
  validates :image, presence: true

  paginates_per 18
end
