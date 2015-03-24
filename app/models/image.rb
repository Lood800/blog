class Image < ActiveRecord::Base
	mount_uploader :photo, PicturesUploader
  validates :photo, :post, presence: true
  belongs_to :post
  validates :caption, length: { maximum: 25 }
end