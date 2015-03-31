class Bio < ActiveRecord::Base
	mount_uploader :profile_pic, PicturesUploader
	validates :name, :info, :body, presence: true
	validates :name, :info, length: { maximum: 25 }


	
end
