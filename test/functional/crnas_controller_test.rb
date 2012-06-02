require 'test_helper'

class CrnasControllerTest < ActionController::TestCase
  setup do
    @crna = crnas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crnas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crna" do
    assert_difference('Crna.count') do
      post :create, :crna => @crna.attributes
    end

    assert_redirected_to crna_path(assigns(:crna))
  end

  test "should show crna" do
    get :show, :id => @crna.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @crna.to_param
    assert_response :success
  end

  test "should update crna" do
    put :update, :id => @crna.to_param, :crna => @crna.attributes
    assert_redirected_to crna_path(assigns(:crna))
  end

  test "should destroy crna" do
    assert_difference('Crna.count', -1) do
      delete :destroy, :id => @crna.to_param
    end

    assert_redirected_to crnas_path
  end
end
