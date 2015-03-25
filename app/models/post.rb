class Post < ActiveRecord::Base
	has_many  :images, dependent: :destroy, :inverse_of => :post
	accepts_nested_attributes_for :images, 
																:allow_destroy => true,
		                            :reject_if => lambda {
		                              |a| a['photo'].blank?
		                            }
	validates :heading, :body, presence: true
	
end
