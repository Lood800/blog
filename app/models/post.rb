class Post < ActiveRecord::Base
	has_many  :images, dependent: :destroy
	validates :heading, :body, presence: true
	
end
