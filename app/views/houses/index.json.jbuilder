json.array!(@houses) do |house|
  json.extract! house, :id, :house_type_id, :address, :sqft, :units, :detached_space
  json.url house_url(house, format: :json)
end
