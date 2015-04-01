class Book < ActiveRecord::Base
	has_many :book_images
	accepts_nested_attributes_for :book_images
	#belongs_to :admin_user
end
