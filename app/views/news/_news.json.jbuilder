json.extract! news, :id, :titulo, :texto, :link, :created_at, :updated_at
json.url news_url(news, format: :json)
