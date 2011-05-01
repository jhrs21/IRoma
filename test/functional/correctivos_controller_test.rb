require 'test_helper'

class CorrectivosControllerTest < ActionController::TestCase
  setup do
    @correctivo = correctivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correctivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correctivo" do
    assert_difference('Correctivo.count') do
      post :create, :correctivo => @correctivo.attributes
    end

    assert_redirected_to correctivo_path(assigns(:correctivo))
  end

  test "should show correctivo" do
    get :show, :id => @correctivo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @correctivo.to_param
    assert_response :success
  end

  test "should update correctivo" do
    put :update, :id => @correctivo.to_param, :correctivo => @correctivo.attributes
    assert_redirected_to correctivo_path(assigns(:correctivo))
  end

  test "should destroy correctivo" do
    assert_difference('Correctivo.count', -1) do
      delete :destroy, :id => @correctivo.to_param
    end

    assert_redirected_to correctivos_path
  end
end
