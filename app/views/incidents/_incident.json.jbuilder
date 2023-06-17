json.extract! incident, :id, :incident_date, :description, :summary, :user_normal_id, :created_at, :updated_at
json.url incident_url(incident, format: :json)
