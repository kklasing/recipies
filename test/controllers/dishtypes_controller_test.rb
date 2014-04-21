require 'test_helper'

class DishtypesControllerTest < ActionController::TestCase
  setup do
    @dishtype = dishtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dishtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dishtype" do
    assert_difference('Dishtype.count') do
      post :create, dishtype: { name: @dishtype.name }
    end

    assert_redirected_to dishtype_path(assigns(:dishtype))
  end

  test "should show dishtype" do
    get :show, id: @dishtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dishtype
    assert_response :success
  end

  test "should update dishtype" do
    patch :update, id: @dishtype, dishtype: { name: @dishtype.name }
    assert_redirected_to dishtype_path(assigns(:dishtype))
  end

  test "should destroy dishtype" do
    assert_difference('Dishtype.count', -1) do
      delete :destroy, id: @dishtype
    end

    assert_redirected_to dishtypes_path
  end
end
