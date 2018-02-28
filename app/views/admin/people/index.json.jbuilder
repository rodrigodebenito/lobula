json.array!(@people) do |person|
  json.extract! person, :id, :name, :summary, :biography, :email, :resume, :picture
  json.url person_url(person, format: :json)
end
