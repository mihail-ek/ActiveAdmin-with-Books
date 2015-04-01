require 'test_helper'

class BookImagesControllerTest < ActionController::TestCase
  setup do
    @book_image = book_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_image" do
    assert_difference('BookImage.count') do
      post :create, book_image: { Image: @book_image.Image, book_id: @book_image.book_id }
    end

    assert_redirected_to book_image_path(assigns(:book_image))
  end

  test "should show book_image" do
    get :show, id: @book_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_image
    assert_response :success
  end

  test "should update book_image" do
    patch :update, id: @book_image, book_image: { Image: @book_image.Image, book_id: @book_image.book_id }
    assert_redirected_to book_image_path(assigns(:book_image))
  end

  test "should destroy book_image" do
    assert_difference('BookImage.count', -1) do
      delete :destroy, id: @book_image
    end

    assert_redirected_to book_images_path
  end
end
