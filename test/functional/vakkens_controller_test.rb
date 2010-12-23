require 'test_helper'

class VakkensControllerTest < ActionController::TestCase
  setup do
    @vakken = vakkens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vakkens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vakken" do
    assert_difference('Vakken.count') do
      post :create, :vakken => @vakken.attributes
    end

    assert_redirected_to vakken_path(assigns(:vakken))
  end

  test "should show vakken" do
    get :show, :id => @vakken.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vakken.to_param
    assert_response :success
  end

  test "should update vakken" do
    put :update, :id => @vakken.to_param, :vakken => @vakken.attributes
    assert_redirected_to vakken_path(assigns(:vakken))
  end

  test "should destroy vakken" do
    assert_difference('Vakken.count', -1) do
      delete :destroy, :id => @vakken.to_param
    end

    assert_redirected_to vakkens_path
  end
end
