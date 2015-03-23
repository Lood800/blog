class Image < ActiveRecord::Base
	mount_uploader :photo, PicturesUploader
  belongs_to :post
  validates :post_id, :photo, presence: true
  
end