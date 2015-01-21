json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :name, :description, :path
  json.url artwork_url(artwork, format: :json)
end
