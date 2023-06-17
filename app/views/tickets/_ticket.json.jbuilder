json.extract! ticket, :id, :claim_date, :due_date, :priority, :status, :incident_id, :user_normal_id, :user_administrator_id, :user_supervisor_id, :user_executive_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
