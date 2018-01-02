require 'test_helper'

class ProfessoresControllerTest < ActionController::TestCase
  setup do
    @professore = professores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professore" do
    assert_difference('Professore.count') do
      post :create, professore: { descricao: @professore.descricao, disciplina: @professore.disciplina, nome: @professore.nome, nucleo_id: @professore.nucleo_id }
    end

    assert_redirected_to professore_path(assigns(:professore))
  end

  test "should show professore" do
    get :show, id: @professore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professore
    assert_response :success
  end

  test "should update professore" do
    patch :update, id: @professore, professore: { descricao: @professore.descricao, disciplina: @professore.disciplina, nome: @professore.nome, nucleo_id: @professore.nucleo_id }
    assert_redirected_to professore_path(assigns(:professore))
  end

  test "should destroy professore" do
    assert_difference('Professore.count', -1) do
      delete :destroy, id: @professore
    end

    assert_redirected_to professores_path
  end
end
