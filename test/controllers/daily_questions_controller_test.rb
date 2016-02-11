require 'test_helper'

class DailyQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_question = daily_questions(:one)
  end

  test "should get index" do
    get daily_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_question_url
    assert_response :success
  end

  test "should create daily_question" do
    assert_difference('DailyQuestion.count') do
      post daily_questions_url, params: { daily_question: { answer_counter: @daily_question.answer_counter, question_id: @daily_question.question_id } }
    end

    assert_redirected_to daily_question_path(DailyQuestion.last)
  end

  test "should show daily_question" do
    get daily_question_url(@daily_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_question_url(@daily_question)
    assert_response :success
  end

  test "should update daily_question" do
    patch daily_question_url(@daily_question), params: { daily_question: { answer_counter: @daily_question.answer_counter, question_id: @daily_question.question_id } }
    assert_redirected_to daily_question_path(@daily_question)
  end

  test "should destroy daily_question" do
    assert_difference('DailyQuestion.count', -1) do
      delete daily_question_url(@daily_question)
    end

    assert_redirected_to daily_questions_path
  end
end
