json.extract! contato, :id, :nome, :email, :text, :created_at, :updated_at
json.url contato_url(contato, format: :json)
