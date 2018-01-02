require 'test_helper'

class EstruturasControllerTest < ActionController::TestCase
  setup do
    @estrutura = estruturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estruturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estrutura" do
    assert_difference('Estrutura.count') do
      post :create, estrutura: { link: @estrutura.link, texto: @estrutura.texto, titulo: @estrutura.titulo }
    end

    assert_redirected_to estrutura_path(assigns(:estrutura))
  end

  test "should show estrutura" do
    get :show, id: @estrutura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estrutura
    assert_response :success
  end

  test "should update estrutura" do
    patch :update, id: @estrutura, estrutura: { link: @estrutura.link, texto: @estrutura.texto, titulo: @estrutura.titulo }
    assert_redirected_to estrutura_path(assigns(:estrutura))
  end

  test "should destroy estrutura" do
    assert_difference('Estrutura.count', -1) do
      delete :destroy, id: @estrutura
    end

    assert_redirected_to estruturas_path
  end
end
