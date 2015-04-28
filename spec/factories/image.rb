require 'faker'

FactoryGirl.define do
	factory :image do
		association :post

		photo { Faker::Avatar.image("my-own-slug") }
		caption { Faker::Name.first_name }

	end
end










# require 'faker'

# FactoryGirl.define do
#   factory :phone do
#     association :contact
#     phone { Faker::PhoneNumber.phone_number }

#     factory :home_phone do
#       phone_type 'home'
#     end

#     factory :work_phone do
#       phone_type 'work'
#     end

#     factory :mobile_phone do
#       phone_type 'mobile'
#     end
#   end
# end