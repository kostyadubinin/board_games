class Picture < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :game
  validates :image, presence: true
end
