json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :description, :shape_id, :path
  json.url shirt_url(shirt, format: :json)
end
