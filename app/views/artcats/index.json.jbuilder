json.array!(@artcats) do |artcat|
  json.extract! artcat, :id, :description, :path
  json.url artcat_url(artcat, format: :json)
end
