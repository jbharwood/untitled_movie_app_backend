require 'test_helper'

class GameQuestionAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_question_answer = game_question_answers(:one)
  end

  test "should get index" do
    get game_question_answers_url, as: :json
    assert_response :success
  end

  test "should create game_question_answer" do
    assert_difference('GameQuestionAnswer.count') do
      post game_question_answers_url, params: { game_question_answer: { integer: @game_question_answer.integer } }, as: :json
    end

    assert_response 201
  end

  test "should show game_question_answer" do
    get game_question_answer_url(@game_question_answer), as: :json
    assert_response :success
  end

  test "should update game_question_answer" do
    patch game_question_answer_url(@game_question_answer), params: { game_question_answer: { integer: @game_question_answer.integer } }, as: :json
    assert_response 200
  end

  test "should destroy game_question_answer" do
    assert_difference('GameQuestionAnswer.count', -1) do
      delete game_question_answer_url(@game_question_answer), as: :json
    end

    assert_response 204
  end
end
