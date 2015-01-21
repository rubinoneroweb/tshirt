json.array!(@sizes) do |size|
  json.extract! size, :id, :description
  json.url size_url(size, format: :json)
end
