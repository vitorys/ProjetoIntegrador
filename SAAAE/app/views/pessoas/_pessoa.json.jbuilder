json.extract! pessoa, :id, :pessoa_nome, :pessoa_documento, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
