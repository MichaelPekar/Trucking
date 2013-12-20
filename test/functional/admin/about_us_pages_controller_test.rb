require 'test_helper'

class Admin::AboutUsPagesControllerTest < ActionController::TestCase
  setup do
    @admin_about_as_page = admin_about_as_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_about_as_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_about_as_page" do
    assert_difference('Admin::AboutUsPage.count') do
      post :create, admin_about_as_page: { content: @admin_about_as_page.content, lang: @admin_about_as_page.lang }
    end

    assert_redirected_to admin_about_as_page_path(assigns(:admin_about_as_page))
  end

  test "should show admin_about_as_page" do
    get :show, id: @admin_about_as_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_about_as_page
    assert_response :success
  end

  test "should update admin_about_as_page" do
    put :update, id: @admin_about_as_page, admin_about_as_page: { content: @admin_about_as_page.content, lang: @admin_about_as_page.lang }
    assert_redirected_to admin_about_as_page_path(assigns(:admin_about_as_page))
  end

  test "should destroy admin_about_as_page" do
    assert_difference('Admin::AboutUsPage.count', -1) do
      delete :destroy, id: @admin_about_as_page
    end

    assert_redirected_to admin_about_as_pages_path
  end
end
