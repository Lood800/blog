class Bio < ActiveRecord::Base
	mount_uploader :profile_pic, PicturesUploader
	validates :name, :info, :body, :profile_pic, presence: true
	validates :name, :info, length: { maximum: 25 }


	
end
