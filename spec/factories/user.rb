FactoryGirl.define do	
	factory :user do |user|
	  user.name                   "koos"
	  user.email                  "koos@gmail.com"
	  user.password               "password"
	  user.password_confirmation  "password"
	end
end
