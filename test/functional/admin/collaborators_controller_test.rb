require 'test_helper'

class Admin::CollaboratorsControllerTest < ActionController::TestCase
  setup do
    @admin_collaborator = admin_collaborators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_collaborators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_collaborator" do
    assert_difference('Admin::Collaborator.count') do
      post :create, admin_collaborator: { description: @admin_collaborator.description, full_name: @admin_collaborator.full_name, post: @admin_collaborator.post }
    end

    assert_redirected_to admin_collaborator_path(assigns(:admin_collaborator))
  end

  test "should show admin_collaborator" do
    get :show, id: @admin_collaborator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_collaborator
    assert_response :success
  end

  test "should update admin_collaborator" do
    put :update, id: @admin_collaborator, admin_collaborator: { description: @admin_collaborator.description, full_name: @admin_collaborator.full_name, post: @admin_collaborator.post }
    assert_redirected_to admin_collaborator_path(assigns(:admin_collaborator))
  end

  test "should destroy admin_collaborator" do
    assert_difference('Admin::Collaborator.count', -1) do
      delete :destroy, id: @admin_collaborator
    end

    assert_redirected_to admin_collaborators_path
  end
end
