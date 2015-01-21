json.array!(@shapes) do |shape|
  json.extract! shape, :id, :description
  json.url shape_url(shape, format: :json)
end
