class BooksController < InheritedResources::Base
	def show
		@book =Book.find(params[:id]) 
	   @book_image = @book.book_images.all
	end

	def new
	   @book = Book.new
	   @book_image = @book.book_images.build
	end

	def create
	   @book = Book.new(book_params)

	   respond_to do |format|
	     if @book.save
	       params[:book_images]['image'].each do |a|
	          @book_image = @book.book_images.create!(:image => a, :book_id => @book.id)
	       end
	       format.html { redirect_to @book, notice: 'Post was successfully created.' }
	     else
	       format.html { render action: 'new' }
	     end
	   end
	 end

	 
  private

    def book_params
      params.require(:book).permit(:title, :author, book_images_attributes: [:id, :book_id, :image])
    end
end

