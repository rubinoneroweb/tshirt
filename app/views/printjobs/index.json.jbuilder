json.array!(@printjobs) do |printjob|
  json.extract! printjob, :id, :name, :shape_id, :mod_id, :color_id, :size_id, :artwork_id, :diamond, :name_under, :name_behind
  json.url printjob_url(printjob, format: :json)
end
