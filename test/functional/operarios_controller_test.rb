require 'test_helper'

class OperariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operario" do
    assert_difference('Operario.count') do
      post :create, :operario => { }
    end

    assert_redirected_to operario_path(assigns(:operario))
  end

  test "should show operario" do
    get :show, :id => operarios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => operarios(:one).to_param
    assert_response :success
  end

  test "should update operario" do
    put :update, :id => operarios(:one).to_param, :operario => { }
    assert_redirected_to operario_path(assigns(:operario))
  end

  test "should destroy operario" do
    assert_difference('Operario.count', -1) do
      delete :destroy, :id => operarios(:one).to_param
    end

    assert_redirected_to operarios_path
  end
end
