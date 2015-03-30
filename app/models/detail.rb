class Detail < ActiveRecord::Base
	validates :name, :email, presence: true

end
