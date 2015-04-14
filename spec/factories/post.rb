FactoryGirl.define do 
	factory :post do |post|
	  post.heading           "Eagle"
	  post.sub_heading       "Kruger"
	  post.body							 "Awesome fish eagle"
	end

	factory :invalid_post, parent: :post do |invalid_post|
  	invalid_post.heading nil
	end
	
end
