json.extract! content, :id, :title, :description, :start_date, :end_date, :created_at, :updated_at
json.url content_url(content, format: :json)
