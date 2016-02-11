json.array!(@documentations) do |documentation|
  json.extract! documentation, :id, :name, :short_name, :download_url
  json.url documentation_url(documentation, format: :json)
end
