json.extract! flight, :id, :name, :origin, :destination, :arrival_time, :departure_time, :created_at, :updated_at
json.url flight_url(flight, format: :json)
