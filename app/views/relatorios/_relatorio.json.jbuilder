json.extract! relatorio, :id, :relatorio_data, :aluno_id, :funcionario_id, :created_at, :updated_at
json.url relatorio_url(relatorio, format: :json)
