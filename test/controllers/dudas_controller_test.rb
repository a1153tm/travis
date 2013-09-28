require 'test_helper'

class DudasControllerTest < ActionController::TestCase
  setup do
    @duda = dudas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dudas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duda" do
    assert_difference('Duda.count') do
      post :create, duda: { ngaa: @duda.ngaa }
    end

    assert_redirected_to duda_path(assigns(:duda))
  end

  test "should show duda" do
    get :show, id: @duda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duda
    assert_response :success
  end

  test "should update duda" do
    patch :update, id: @duda, duda: { ngaa: @duda.ngaa }
    assert_redirected_to duda_path(assigns(:duda))
  end

  test "should destroy duda" do
    assert_difference('Duda.count', -1) do
      delete :destroy, id: @duda
    end

    assert_redirected_to dudas_path
  end
end
