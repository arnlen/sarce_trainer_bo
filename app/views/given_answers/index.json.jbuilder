json.array!(@given_answers) do |given_answer|
  json.extract! given_answer, :id, :user_id, :question_id, :answer, :is_correct
  json.url given_answer_url(given_answer, format: :json)
end
