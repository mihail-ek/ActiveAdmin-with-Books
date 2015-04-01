class BookImagesController < InheritedResources::Base
	def update
	  respond_to do |format|
	    if @book_image.update(book_image_params)
	      format.html { redirect_to @book_image.post, notice: 'Post attachment was successfully updated.' }
	    end 
	  end
	end
  private

    def book_image_params
      params.require(:book_image).permit(:book_id, :Image)
    end
end

