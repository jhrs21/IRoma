require 'test_helper'

class PreventivosControllerTest < ActionController::TestCase
  setup do
    @preventivo = preventivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preventivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preventivo" do
    assert_difference('Preventivo.count') do
      post :create, :preventivo => @preventivo.attributes
    end

    assert_redirected_to preventivo_path(assigns(:preventivo))
  end

  test "should show preventivo" do
    get :show, :id => @preventivo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @preventivo.to_param
    assert_response :success
  end

  test "should update preventivo" do
    put :update, :id => @preventivo.to_param, :preventivo => @preventivo.attributes
    assert_redirected_to preventivo_path(assigns(:preventivo))
  end

  test "should destroy preventivo" do
    assert_difference('Preventivo.count', -1) do
      delete :destroy, :id => @preventivo.to_param
    end

    assert_redirected_to preventivos_path
  end
end
