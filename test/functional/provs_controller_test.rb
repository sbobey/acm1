require 'test_helper'

class ProvsControllerTest < ActionController::TestCase
  setup do
    @prov = provs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prov" do
    assert_difference('Prov.count') do
      post :create, :prov => @prov.attributes
    end

    assert_redirected_to prov_path(assigns(:prov))
  end

  test "should show prov" do
    get :show, :id => @prov.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prov.to_param
    assert_response :success
  end

  test "should update prov" do
    put :update, :id => @prov.to_param, :prov => @prov.attributes
    assert_redirected_to prov_path(assigns(:prov))
  end

  test "should destroy prov" do
    assert_difference('Prov.count', -1) do
      delete :destroy, :id => @prov.to_param
    end

    assert_redirected_to provs_path
  end
end
