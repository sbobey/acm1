require 'test_helper'

class SurgsControllerTest < ActionController::TestCase
  setup do
    @surg = surgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surg" do
    assert_difference('Surg.count') do
      post :create, :surg => @surg.attributes
    end

    assert_redirected_to surg_path(assigns(:surg))
  end

  test "should show surg" do
    get :show, :id => @surg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @surg.to_param
    assert_response :success
  end

  test "should update surg" do
    put :update, :id => @surg.to_param, :surg => @surg.attributes
    assert_redirected_to surg_path(assigns(:surg))
  end

  test "should destroy surg" do
    assert_difference('Surg.count', -1) do
      delete :destroy, :id => @surg.to_param
    end

    assert_redirected_to surgs_path
  end
end
