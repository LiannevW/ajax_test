class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
