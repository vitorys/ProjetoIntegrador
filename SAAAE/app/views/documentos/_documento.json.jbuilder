json.extract! documento, :id, :doc_rg, :doc_cpf, :created_at, :updated_at
json.url documento_url(documento, format: :json)
