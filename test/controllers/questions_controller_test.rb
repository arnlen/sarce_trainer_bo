require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get questions_url
    assert_response :success
  end

  test "should get new" do
    get new_question_url
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post questions_url, params: { question: { answers: @question.answers, body: @question.body, correct_answers: @question.correct_answers, explanation: @question.explanation, repository_id: @question.repository_id } }
    end

    assert_redirected_to question_path(Question.last)
  end

  test "should show question" do
    get question_url(@question)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_url(@question)
    assert_response :success
  end

  test "should update question" do
    patch question_url(@question), params: { question: { answers: @question.answers, body: @question.body, correct_answers: @question.correct_answers, explanation: @question.explanation, repository_id: @question.repository_id } }
    assert_redirected_to question_path(@question)
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete question_url(@question)
    end

    assert_redirected_to questions_path
  end
end
