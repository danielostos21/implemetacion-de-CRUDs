json.extract! client, :id, :nombre, :persona_juridica, :nro_doc, :tlf, :company_id, :created_at, :updated_at
json.url client_url(client, format: :json)
