require 'test_helper'

class CentralsControllerTest < ActionController::TestCase
  setup do
    @central = centrals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centrals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create central" do
    assert_difference('Central.count') do
      post :create, :central => @central.attributes
    end

    assert_redirected_to central_path(assigns(:central))
  end

  test "should show central" do
    get :show, :id => @central.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @central.to_param
    assert_response :success
  end

  test "should update central" do
    put :update, :id => @central.to_param, :central => @central.attributes
    assert_redirected_to central_path(assigns(:central))
  end

  test "should destroy central" do
    assert_difference('Central.count', -1) do
      delete :destroy, :id => @central.to_param
    end

    assert_redirected_to centrals_path
  end
end
