json.array!(@book_images) do |book_image|
  json.extract! book_image, :id, :book_id, :Image
  json.url book_image_url(book_image, format: :json)
end
