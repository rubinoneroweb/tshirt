json.array!(@fonts) do |font|
  json.extract! font, :id, :name, :path
  json.url font_url(font, format: :json)
end
