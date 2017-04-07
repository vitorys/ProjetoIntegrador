require 'test_helper'

class PessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_url
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post pessoas_url, params: { pessoa: { pessoa_documento: @pessoa.pessoa_documento, pessoa_nome: @pessoa.pessoa_nome } }
    end

    assert_redirected_to pessoa_url(Pessoa.last)
  end

  test "should show pessoa" do
    get pessoa_url(@pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_url(@pessoa)
    assert_response :success
  end

  test "should update pessoa" do
    patch pessoa_url(@pessoa), params: { pessoa: { pessoa_documento: @pessoa.pessoa_documento, pessoa_nome: @pessoa.pessoa_nome } }
    assert_redirected_to pessoa_url(@pessoa)
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete pessoa_url(@pessoa)
    end

    assert_redirected_to pessoas_url
  end
end
