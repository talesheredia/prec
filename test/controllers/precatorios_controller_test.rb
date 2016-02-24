require 'test_helper'

class PrecatoriosControllerTest < ActionController::TestCase
  setup do
    @precatorio = precatorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precatorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precatorio" do
    assert_difference('Precatorio.count') do
      post :create, precatorio: {  }
    end

    assert_redirected_to precatorio_path(assigns(:precatorio))
  end

  test "should show precatorio" do
    get :show, id: @precatorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precatorio
    assert_response :success
  end

  test "should update precatorio" do
    patch :update, id: @precatorio, precatorio: {  }
    assert_redirected_to precatorio_path(assigns(:precatorio))
  end

  test "should destroy precatorio" do
    assert_difference('Precatorio.count', -1) do
      delete :destroy, id: @precatorio
    end

    assert_redirected_to precatorios_path
  end
end
