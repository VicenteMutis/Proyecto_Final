json.extract! user, :id, :email, :name, :lastname, :role, :admin_id, :supervisor_id, :executive_id, :created_at, :updated_at
json.url user_url(user, format: :json)
