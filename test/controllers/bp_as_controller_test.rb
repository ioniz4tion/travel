require 'test_helper'

class BpAsControllerTest < ActionController::TestCase
  setup do
    @bpa = bpas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bpas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bpa" do
    assert_difference('Bpa.count') do
      post :create, bpa: {  }
    end

    assert_redirected_to bpa_path(assigns(:bpa))
  end

  test "should show bpa" do
    get :show, id: @bpa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bpa
    assert_response :success
  end

  test "should update bpa" do
    patch :update, id: @bpa, bpa: {  }
    assert_redirected_to bpa_path(assigns(:bpa))
  end

  test "should destroy bpa" do
    assert_difference('Bpa.count', -1) do
      delete :destroy, id: @bpa
    end

    assert_redirected_to bpas_path
  end
end
