json.extract! comment, :id, :description, :status, :film_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
