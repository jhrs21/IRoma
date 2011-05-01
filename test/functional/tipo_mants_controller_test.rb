require 'test_helper'

class TipoMantsControllerTest < ActionController::TestCase
  setup do
    @tipo_mant = tipo_mants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_mants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_mant" do
    assert_difference('TipoMant.count') do
      post :create, :tipo_mant => @tipo_mant.attributes
    end

    assert_redirected_to tipo_mant_path(assigns(:tipo_mant))
  end

  test "should show tipo_mant" do
    get :show, :id => @tipo_mant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_mant.to_param
    assert_response :success
  end

  test "should update tipo_mant" do
    put :update, :id => @tipo_mant.to_param, :tipo_mant => @tipo_mant.attributes
    assert_redirected_to tipo_mant_path(assigns(:tipo_mant))
  end

  test "should destroy tipo_mant" do
    assert_difference('TipoMant.count', -1) do
      delete :destroy, :id => @tipo_mant.to_param
    end

    assert_redirected_to tipo_mants_path
  end
end
