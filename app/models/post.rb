class Post < ActiveRecord::Base
	validates :heading, :body, presence: true
	
end
