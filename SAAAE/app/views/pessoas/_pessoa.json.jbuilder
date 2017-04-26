json.extract! pessoa, :id, :pessoa_nome, :pessoa_endereco, :pessoa_cidade, :pessoa_estado, :pessoa_cep, :pessoa_email, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
