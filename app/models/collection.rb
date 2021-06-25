class Collection < ApplicationRecord
  belongs_to :user
  has_many :collection_posts
  has_many :posts, through: :collection_posts
  mount_uploader :image, ImageUploader
end
