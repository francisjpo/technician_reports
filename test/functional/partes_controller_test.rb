require 'test_helper'

class PartesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parte" do
    assert_difference('Parte.count') do
      post :create, :parte => { }
    end

    assert_redirected_to parte_path(assigns(:parte))
  end

  test "should show parte" do
    get :show, :id => partes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => partes(:one).to_param
    assert_response :success
  end

  test "should update parte" do
    put :update, :id => partes(:one).to_param, :parte => { }
    assert_redirected_to parte_path(assigns(:parte))
  end

  test "should destroy parte" do
    assert_difference('Parte.count', -1) do
      delete :destroy, :id => partes(:one).to_param
    end

    assert_redirected_to partes_path
  end
end
