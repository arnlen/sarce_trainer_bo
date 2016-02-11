json.array!(@questions) do |question|
  json.extract! question, :id, :body, :answers, :correct_answers, :explanation, :repository_id
  json.url question_url(question, format: :json)
end
