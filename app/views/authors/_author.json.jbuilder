json.extract! author, :id, :name, :email, :birthyear, :created_at, :updated_at
json.url author_url(author, format: :json)
