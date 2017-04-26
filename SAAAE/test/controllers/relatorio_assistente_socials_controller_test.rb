require 'test_helper'

class RelatorioAssistenteSocialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_assistente_social = relatorio_assistente_socials(:one)
  end

  test "should get index" do
    get relatorio_assistente_socials_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_assistente_social_url
    assert_response :success
  end

  test "should create relatorio_assistente_social" do
    assert_difference('RelatorioAssistenteSocial.count') do
      post relatorio_assistente_socials_url, params: { relatorio_assistente_social: { ras_entrevista: @relatorio_assistente_social.ras_entrevista, ras_motivo: @relatorio_assistente_social.ras_motivo, relatorio_id: @relatorio_assistente_social.relatorio_id } }
    end

    assert_redirected_to relatorio_assistente_social_url(RelatorioAssistenteSocial.last)
  end

  test "should show relatorio_assistente_social" do
    get relatorio_assistente_social_url(@relatorio_assistente_social)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_assistente_social_url(@relatorio_assistente_social)
    assert_response :success
  end

  test "should update relatorio_assistente_social" do
    patch relatorio_assistente_social_url(@relatorio_assistente_social), params: { relatorio_assistente_social: { ras_entrevista: @relatorio_assistente_social.ras_entrevista, ras_motivo: @relatorio_assistente_social.ras_motivo, relatorio_id: @relatorio_assistente_social.relatorio_id } }
    assert_redirected_to relatorio_assistente_social_url(@relatorio_assistente_social)
  end

  test "should destroy relatorio_assistente_social" do
    assert_difference('RelatorioAssistenteSocial.count', -1) do
      delete relatorio_assistente_social_url(@relatorio_assistente_social)
    end

    assert_redirected_to relatorio_assistente_socials_url
  end
end
