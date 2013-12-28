require 'test_helper'

class Admin::PageSectionsControllerTest < ActionController::TestCase
  setup do
    @admin_page_section = admin_page_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_page_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_page_section" do
    assert_difference('Admin::PageSection.count') do
      post :create, admin_page_section: { lang: @admin_page_section.lang, name: @admin_page_section.name }
    end

    assert_redirected_to admin_page_section_path(assigns(:admin_page_section))
  end

  test "should show admin_page_section" do
    get :show, id: @admin_page_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_page_section
    assert_response :success
  end

  test "should update admin_page_section" do
    put :update, id: @admin_page_section, admin_page_section: { lang: @admin_page_section.lang, name: @admin_page_section.name }
    assert_redirected_to admin_page_section_path(assigns(:admin_page_section))
  end

  test "should destroy admin_page_section" do
    assert_difference('Admin::PageSection.count', -1) do
      delete :destroy, id: @admin_page_section
    end

    assert_redirected_to admin_page_sections_path
  end
end
