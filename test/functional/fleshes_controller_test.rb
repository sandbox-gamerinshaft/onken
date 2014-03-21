require 'test_helper'

class FleshesControllerTest < ActionController::TestCase
  setup do
    @flesh = fleshes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fleshes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flesh" do
    assert_difference('Flesh.count') do
      post :create, flesh: {  }
    end

    assert_redirected_to flesh_path(assigns(:flesh))
  end

  test "should show flesh" do
    get :show, id: @flesh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flesh
    assert_response :success
  end

  test "should update flesh" do
    put :update, id: @flesh, flesh: {  }
    assert_redirected_to flesh_path(assigns(:flesh))
  end

  test "should destroy flesh" do
    assert_difference('Flesh.count', -1) do
      delete :destroy, id: @flesh
    end

    assert_redirected_to fleshes_path
  end
end
