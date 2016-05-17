json.array!(@top_locations) do |location|
  json.extract! location, :name, :description, :latitude, :longitude
end
