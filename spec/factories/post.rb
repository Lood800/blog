FactoryGirl.define do 
	factory :post do |post|
	  post.heading           "Eagle"
	  post.sub_heading       "Kruger"
	  post.body							 "Awesome fish eagle"
	
		# after(:build) do |post|
		# 	post.images << FactoryGirl.build(:image)
		# end
	end
end



# require 'faker'

# FactoryGirl.define do
#   factory :contact do
#     firstname { Faker::Name.first_name }
#     lastname { Faker::Name.last_name }
#     email { Faker::Internet.email }

#     after(:build) do |contact|
#       [:home_phone, :work_phone, :mobile_phone].each do |phone|
#         contact.phones << FactoryGirl.build(:phone,
#           phone_type: phone, contact: contact)
#       end
#     end

#     factory :invalid_contact do
#       firstname nil
#     end
#   end
# end