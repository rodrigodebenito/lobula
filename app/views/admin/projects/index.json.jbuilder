json.array!(@projects) do |project|
  json.extract! project, :id, :title, :summary, :description, :client, :credit, :role, :website_url, :date, :awards, :slug, :bitmap
  json.url project_url(project, format: :json)
end
