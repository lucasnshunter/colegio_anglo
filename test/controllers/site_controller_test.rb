require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get equipe" do
    get :equipe
    assert_response :success
  end

  test "should get historia" do
    get :historia
    assert_response :success
  end

  test "should get estrutura" do
    get :estrutura
    assert_response :success
  end

  test "should get infantil" do
    get :infantil
    assert_response :success
  end

  test "should get fundamental_I" do
    get :fundamental_I
    assert_response :success
  end

  test "should get fundamental_II" do
    get :fundamental_II
    assert_response :success
  end

  test "should get medio" do
    get :medio
    assert_response :success
  end

  test "should get projetos" do
    get :projetos
    assert_response :success
  end

  test "should get egressos" do
    get :egressos
    assert_response :success
  end

  test "should get calendario" do
    get :calendario
    assert_response :success
  end

  test "should get provas" do
    get :provas
    assert_response :success
  end

  test "should get humanas" do
    get :humanas
    assert_response :success
  end

  test "should get linguas" do
    get :linguas
    assert_response :success
  end

  test "should get matematica" do
    get :matematica
    assert_response :success
  end

  test "should get biologicas" do
    get :biologicas
    assert_response :success
  end

  test "should get natureza" do
    get :natureza
    assert_response :success
  end

  test "should get redacao" do
    get :redacao
    assert_response :success
  end

  test "should get noticias" do
    get :noticias
    assert_response :success
  end

  test "should get galeria" do
    get :galeria
    assert_response :success
  end

  test "should get contato" do
    get :contato
    assert_response :success
  end

  test "should get pre_matricula" do
    get :pre_matricula
    assert_response :success
  end

end
