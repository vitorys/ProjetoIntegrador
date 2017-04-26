json.extract! relatorio_geral, :id, :rg_objetivo, :rg_atendimento, :relatorio_id, :created_at, :updated_at
json.url relatorio_geral_url(relatorio_geral, format: :json)
