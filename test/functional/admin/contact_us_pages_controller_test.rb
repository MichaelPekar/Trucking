require 'test_helper'

class Admin::ContactUsPagesControllerTest < ActionController::TestCase
  setup do
    @admin_contact_us_page = admin_contact_us_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_contact_us_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_contact_us_page" do
    assert_difference('Admin::ContactUsPage.count') do
      post :create, admin_contact_us_page: { content: @admin_contact_us_page.content, lang: @admin_contact_us_page.lang }
    end

    assert_redirected_to admin_contact_us_page_path(assigns(:admin_contact_us_page))
  end

  test "should show admin_contact_us_page" do
    get :show, id: @admin_contact_us_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_contact_us_page
    assert_response :success
  end

  test "should update admin_contact_us_page" do
    put :update, id: @admin_contact_us_page, admin_contact_us_page: { content: @admin_contact_us_page.content, lang: @admin_contact_us_page.lang }
    assert_redirected_to admin_contact_us_page_path(assigns(:admin_contact_us_page))
  end

  test "should destroy admin_contact_us_page" do
    assert_difference('Admin::ContactUsPage.count', -1) do
      delete :destroy, id: @admin_contact_us_page
    end

    assert_redirected_to admin_contact_us_pages_path
  end
end
