json.array!(@daily_questions) do |daily_question|
  json.extract! daily_question, :id, :question_id, :answer_counter
  json.url daily_question_url(daily_question, format: :json)
end
