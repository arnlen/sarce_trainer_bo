json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :rank_id, :cis, :email
  json.url user_url(user, format: :json)
end
