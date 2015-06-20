require 'test_helper'

class ObrasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obra" do
    assert_difference('Obra.count') do
      post :create, :obra => { }
    end

    assert_redirected_to obra_path(assigns(:obra))
  end

  test "should show obra" do
    get :show, :id => obras(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => obras(:one).to_param
    assert_response :success
  end

  test "should update obra" do
    put :update, :id => obras(:one).to_param, :obra => { }
    assert_redirected_to obra_path(assigns(:obra))
  end

  test "should destroy obra" do
    assert_difference('Obra.count', -1) do
      delete :destroy, :id => obras(:one).to_param
    end

    assert_redirected_to obras_path
  end
end
