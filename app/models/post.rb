class Post < ActiveRecord::Base
	has_many  :images, dependent: :destroy, :inverse_of => :post
	accepts_nested_attributes_for :images
	validates :heading, :body, presence: true
	
end
