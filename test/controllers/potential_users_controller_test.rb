require 'test_helper'

class PotentialUsersControllerTest < ActionController::TestCase
  setup do
    @potential_user = potential_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potential_users)
  end

  test "should create potential_user" do
    assert_difference('PotentialUser.count') do
      post :create, potential_user: { email: @potential_user.email, first_name: @potential_user.first_name, gender: @potential_user.gender }
    end

    assert_response 201
  end

  test "should show potential_user" do
    get :show, id: @potential_user
    assert_response :success
  end

  test "should update potential_user" do
    put :update, id: @potential_user, potential_user: { email: @potential_user.email, first_name: @potential_user.first_name, gender: @potential_user.gender }
    assert_response 204
  end

  test "should destroy potential_user" do
    assert_difference('PotentialUser.count', -1) do
      delete :destroy, id: @potential_user
    end

    assert_response 204
  end
end
