require 'test_helper'

class AutoartsControllerTest < ActionController::TestCase
  setup do
    @autoart = autoarts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autoarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autoart" do
    assert_difference('Autoart.count') do
      post :create, autoart: { description: @autoart.description, title: @autoart.title }
    end

    assert_redirected_to autoart_path(assigns(:autoart))
  end

  test "should show autoart" do
    get :show, id: @autoart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autoart
    assert_response :success
  end

  test "should update autoart" do
    patch :update, id: @autoart, autoart: { description: @autoart.description, title: @autoart.title }
    assert_redirected_to autoart_path(assigns(:autoart))
  end

  test "should destroy autoart" do
    assert_difference('Autoart.count', -1) do
      delete :destroy, id: @autoart
    end

    assert_redirected_to autoarts_path
  end
end
