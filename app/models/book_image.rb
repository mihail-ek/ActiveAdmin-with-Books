class BookImage < ActiveRecord::Base
   mount_uploader :image, ImageUploader
   belongs_to :book
end
