require 'test_helper'

class ColadoradoresControllerTest < ActionController::TestCase
  setup do
    @coladoradore = coladoradores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coladoradores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coladoradore" do
    assert_difference('Coladoradore.count') do
      post :create, coladoradore: { cargo: @coladoradore.cargo, nome: @coladoradore.nome }
    end

    assert_redirected_to coladoradore_path(assigns(:coladoradore))
  end

  test "should show coladoradore" do
    get :show, id: @coladoradore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coladoradore
    assert_response :success
  end

  test "should update coladoradore" do
    patch :update, id: @coladoradore, coladoradore: { cargo: @coladoradore.cargo, nome: @coladoradore.nome }
    assert_redirected_to coladoradore_path(assigns(:coladoradore))
  end

  test "should destroy coladoradore" do
    assert_difference('Coladoradore.count', -1) do
      delete :destroy, id: @coladoradore
    end

    assert_redirected_to coladoradores_path
  end
end
