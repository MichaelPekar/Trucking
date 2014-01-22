require 'test_helper'

class Admin::GalleryItemsControllerTest < ActionController::TestCase
  setup do
    @admin_gallery_item = admin_gallery_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_gallery_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_gallery_item" do
    assert_difference('Admin::GalleryItem.count') do
      post :create, admin_gallery_item: { cz_text: @admin_gallery_item.cz_text, de_text: @admin_gallery_item.de_text, en_text: @admin_gallery_item.en_text, pl_text: @admin_gallery_item.pl_text, ru_text: @admin_gallery_item.ru_text, sk_text: @admin_gallery_item.sk_text, ua_text: @admin_gallery_item.ua_text }
    end

    assert_redirected_to admin_gallery_item_path(assigns(:admin_gallery_item))
  end

  test "should show admin_gallery_item" do
    get :show, id: @admin_gallery_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_gallery_item
    assert_response :success
  end

  test "should update admin_gallery_item" do
    put :update, id: @admin_gallery_item, admin_gallery_item: { cz_text: @admin_gallery_item.cz_text, de_text: @admin_gallery_item.de_text, en_text: @admin_gallery_item.en_text, pl_text: @admin_gallery_item.pl_text, ru_text: @admin_gallery_item.ru_text, sk_text: @admin_gallery_item.sk_text, ua_text: @admin_gallery_item.ua_text }
    assert_redirected_to admin_gallery_item_path(assigns(:admin_gallery_item))
  end

  test "should destroy admin_gallery_item" do
    assert_difference('Admin::GalleryItem.count', -1) do
      delete :destroy, id: @admin_gallery_item
    end

    assert_redirected_to admin_gallery_items_path
  end
end
