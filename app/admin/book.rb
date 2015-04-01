ActiveAdmin.register Book do

    # Customize columns displayed on the index screen in the table
  permit_params :title, :author, book_images_attributes: [:id, :book_id, :image]
  index do
    selectable_column
    column :title
    column :author
    actions
  end
  

  form(:html => { :multipart => true }) do |f|
    f.inputs "Book" do
      f.input :title
      f.input :author
      f.has_many :book_images  do |p|
        p.input :image, :as => :file, :label => "Image",:hint => p.template.image_tag(p.object.image.url) 
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :author
      row :image do
        image_tag book.book_images.first.image.url if book.book_images.first.image
      end
    end
    active_admin_comments
  end

# :image_preview => true
  # show do
  #   attributes_table do
  #     row :title
  #     row :author
  #     row :image do
  #         image_tag(equipe.image.url)
  #     end
  #   end 
  # end
 

end
