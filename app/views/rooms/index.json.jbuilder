json.array!(@rooms) do |room|
  json.extract! room, :building_id, :name, :description
  json.url room_url(room, format: :json)
end
