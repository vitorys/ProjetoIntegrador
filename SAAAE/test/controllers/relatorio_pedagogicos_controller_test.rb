require 'test_helper'

class RelatorioPedagogicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_pedagogico = relatorio_pedagogicos(:one)
  end

  test "should get index" do
    get relatorio_pedagogicos_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_pedagogico_url
    assert_response :success
  end

  test "should create relatorio_pedagogico" do
    assert_difference('RelatorioPedagogico.count') do
      post relatorio_pedagogicos_url, params: { relatorio_pedagogico: { relatorio_id: @relatorio_pedagogico.relatorio_id, rpe_atendimento: @relatorio_pedagogico.rpe_atendimento, rpe_objetivo: @relatorio_pedagogico.rpe_objetivo } }
    end

    assert_redirected_to relatorio_pedagogico_url(RelatorioPedagogico.last)
  end

  test "should show relatorio_pedagogico" do
    get relatorio_pedagogico_url(@relatorio_pedagogico)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_pedagogico_url(@relatorio_pedagogico)
    assert_response :success
  end

  test "should update relatorio_pedagogico" do
    patch relatorio_pedagogico_url(@relatorio_pedagogico), params: { relatorio_pedagogico: { relatorio_id: @relatorio_pedagogico.relatorio_id, rpe_atendimento: @relatorio_pedagogico.rpe_atendimento, rpe_objetivo: @relatorio_pedagogico.rpe_objetivo } }
    assert_redirected_to relatorio_pedagogico_url(@relatorio_pedagogico)
  end

  test "should destroy relatorio_pedagogico" do
    assert_difference('RelatorioPedagogico.count', -1) do
      delete relatorio_pedagogico_url(@relatorio_pedagogico)
    end

    assert_redirected_to relatorio_pedagogicos_url
  end
end
