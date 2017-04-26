require 'test_helper'

class RelatorioPsicologicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_psicologico = relatorio_psicologicos(:one)
  end

  test "should get index" do
    get relatorio_psicologicos_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_psicologico_url
    assert_response :success
  end

  test "should create relatorio_psicologico" do
    assert_difference('RelatorioPsicologico.count') do
      post relatorio_psicologicos_url, params: { relatorio_psicologico: { relatorio_id: @relatorio_psicologico.relatorio_id, rp_atendimento: @relatorio_psicologico.rp_atendimento, rp_objetivo: @relatorio_psicologico.rp_objetivo } }
    end

    assert_redirected_to relatorio_psicologico_url(RelatorioPsicologico.last)
  end

  test "should show relatorio_psicologico" do
    get relatorio_psicologico_url(@relatorio_psicologico)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_psicologico_url(@relatorio_psicologico)
    assert_response :success
  end

  test "should update relatorio_psicologico" do
    patch relatorio_psicologico_url(@relatorio_psicologico), params: { relatorio_psicologico: { relatorio_id: @relatorio_psicologico.relatorio_id, rp_atendimento: @relatorio_psicologico.rp_atendimento, rp_objetivo: @relatorio_psicologico.rp_objetivo } }
    assert_redirected_to relatorio_psicologico_url(@relatorio_psicologico)
  end

  test "should destroy relatorio_psicologico" do
    assert_difference('RelatorioPsicologico.count', -1) do
      delete relatorio_psicologico_url(@relatorio_psicologico)
    end

    assert_redirected_to relatorio_psicologicos_url
  end
end
