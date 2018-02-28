json.array!(@pictures) do |picture|
  json.extract! picture, :id, :caption, :credit, :weight, :project_id, :active, :href
  json.url picture_url(picture, format: :json)
end
