json.extract! credencial, :id, :credencial_senha, :pessoa_id, :created_at, :updated_at
json.url credencial_url(credencial, format: :json)
