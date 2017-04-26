require 'test_helper'

class CredencialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @credencial = credencials(:one)
  end

  test "should get index" do
    get credencials_url
    assert_response :success
  end

  test "should get new" do
    get new_credencial_url
    assert_response :success
  end

  test "should create credencial" do
    assert_difference('Credencial.count') do
      post credencials_url, params: { credencial: { credencial_senha: @credencial.credencial_senha, pessoa_id: @credencial.pessoa_id } }
    end

    assert_redirected_to credencial_url(Credencial.last)
  end

  test "should show credencial" do
    get credencial_url(@credencial)
    assert_response :success
  end

  test "should get edit" do
    get edit_credencial_url(@credencial)
    assert_response :success
  end

  test "should update credencial" do
    patch credencial_url(@credencial), params: { credencial: { credencial_senha: @credencial.credencial_senha, pessoa_id: @credencial.pessoa_id } }
    assert_redirected_to credencial_url(@credencial)
  end

  test "should destroy credencial" do
    assert_difference('Credencial.count', -1) do
      delete credencial_url(@credencial)
    end

    assert_redirected_to credencials_url
  end
end
