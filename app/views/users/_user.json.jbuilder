json.extract! user, :id, :login, :email, :name, :encrypted_access_token, :created_at, :updated_at
json.url user_url(user, format: :json)
