class Blog < ApplicationRecord
  belongs_to :blog_category

  validates :title, presence: true
  validates :blog_url, uniqueness: true
  validates :header_photo_path, presence: true

  mount_uploader :photo, PhotoUploader
end
