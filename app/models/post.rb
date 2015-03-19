class Post < ActiveRecord::Base
	include Bootsy::Container
	validates :heading, :body, presence: true
	
end
