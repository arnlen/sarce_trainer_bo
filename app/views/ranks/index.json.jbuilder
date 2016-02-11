json.array!(@ranks) do |rank|
  json.extract! rank, :id, :name, :short_name, :image_url
  json.url rank_url(rank, format: :json)
end
