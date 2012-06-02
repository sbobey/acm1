require 'test_helper'

class AddpsControllerTest < ActionController::TestCase
  setup do
    @addp = addps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addp" do
    assert_difference('Addp.count') do
      post :create, :addp => @addp.attributes
    end

    assert_redirected_to addp_path(assigns(:addp))
  end

  test "should show addp" do
    get :show, :id => @addp.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @addp.to_param
    assert_response :success
  end

  test "should update addp" do
    put :update, :id => @addp.to_param, :addp => @addp.attributes
    assert_redirected_to addp_path(assigns(:addp))
  end

  test "should destroy addp" do
    assert_difference('Addp.count', -1) do
      delete :destroy, :id => @addp.to_param
    end

    assert_redirected_to addps_path
  end
end
