json.extract! content, :id, :title, :description, :price, :created_at, :updated_at
json.url content_url(content, format: :json)
