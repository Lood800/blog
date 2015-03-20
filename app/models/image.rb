class Image < ActiveRecord::Base
  belongs_to :post
  validates :post_id, :photo, presence: true
  
end
