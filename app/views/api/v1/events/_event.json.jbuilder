json.extract! event, :id, :title, :description, :created_at, :updated_at
json.url api_v1_event_url(event, format: :json)
