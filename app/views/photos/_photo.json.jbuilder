json.extract! photo, :id, :nome, :data_postagens, :galery_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
