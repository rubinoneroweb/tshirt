json.array!(@mods) do |mod|
  json.extract! mod, :id, :shape_id, :description
  json.url mod_url(mod, format: :json)
end
