json.array!(@buildings) do |building|
  json.extract! building, :code, :name, :description
  json.url building_url(building, format: :json)
end
