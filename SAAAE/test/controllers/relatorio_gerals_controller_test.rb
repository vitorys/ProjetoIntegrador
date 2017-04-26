require 'test_helper'

class RelatorioGeralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_geral = relatorio_gerals(:one)
  end

  test "should get index" do
    get relatorio_gerals_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_geral_url
    assert_response :success
  end

  test "should create relatorio_geral" do
    assert_difference('RelatorioGeral.count') do
      post relatorio_gerals_url, params: { relatorio_geral: { relatorio_id: @relatorio_geral.relatorio_id, rg_atendimento: @relatorio_geral.rg_atendimento, rg_objetivo: @relatorio_geral.rg_objetivo } }
    end

    assert_redirected_to relatorio_geral_url(RelatorioGeral.last)
  end

  test "should show relatorio_geral" do
    get relatorio_geral_url(@relatorio_geral)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_geral_url(@relatorio_geral)
    assert_response :success
  end

  test "should update relatorio_geral" do
    patch relatorio_geral_url(@relatorio_geral), params: { relatorio_geral: { relatorio_id: @relatorio_geral.relatorio_id, rg_atendimento: @relatorio_geral.rg_atendimento, rg_objetivo: @relatorio_geral.rg_objetivo } }
    assert_redirected_to relatorio_geral_url(@relatorio_geral)
  end

  test "should destroy relatorio_geral" do
    assert_difference('RelatorioGeral.count', -1) do
      delete relatorio_geral_url(@relatorio_geral)
    end

    assert_redirected_to relatorio_gerals_url
  end
end
