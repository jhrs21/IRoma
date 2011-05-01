require 'test_helper'

class RepuestosControllerTest < ActionController::TestCase
  setup do
    @repuesto = repuestos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repuestos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repuesto" do
    assert_difference('Repuesto.count') do
      post :create, :repuesto => @repuesto.attributes
    end

    assert_redirected_to repuesto_path(assigns(:repuesto))
  end

  test "should show repuesto" do
    get :show, :id => @repuesto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @repuesto.to_param
    assert_response :success
  end

  test "should update repuesto" do
    put :update, :id => @repuesto.to_param, :repuesto => @repuesto.attributes
    assert_redirected_to repuesto_path(assigns(:repuesto))
  end

  test "should destroy repuesto" do
    assert_difference('Repuesto.count', -1) do
      delete :destroy, :id => @repuesto.to_param
    end

    assert_redirected_to repuestos_path
  end
end
