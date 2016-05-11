require 'test_helper'

class FitsControllerTest < ActionController::TestCase
  setup do
    @fit = fits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fit" do
    assert_difference('Fit.count') do
      post :create, fit: { description: @fit.description, title: @fit.title }
    end

    assert_redirected_to fit_path(assigns(:fit))
  end

  test "should show fit" do
    get :show, id: @fit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fit
    assert_response :success
  end

  test "should update fit" do
    patch :update, id: @fit, fit: { description: @fit.description, title: @fit.title }
    assert_redirected_to fit_path(assigns(:fit))
  end

  test "should destroy fit" do
    assert_difference('Fit.count', -1) do
      delete :destroy, id: @fit
    end

    assert_redirected_to fits_path
  end
end
