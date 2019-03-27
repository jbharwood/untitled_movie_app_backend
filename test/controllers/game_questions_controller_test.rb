require 'test_helper'

class GameQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_question = game_questions(:one)
  end

  test "should get index" do
    get game_questions_url, as: :json
    assert_response :success
  end

  test "should create game_question" do
    assert_difference('GameQuestion.count') do
      post game_questions_url, params: { game_question: { integer: @game_question.integer } }, as: :json
    end

    assert_response 201
  end

  test "should show game_question" do
    get game_question_url(@game_question), as: :json
    assert_response :success
  end

  test "should update game_question" do
    patch game_question_url(@game_question), params: { game_question: { integer: @game_question.integer } }, as: :json
    assert_response 200
  end

  test "should destroy game_question" do
    assert_difference('GameQuestion.count', -1) do
      delete game_question_url(@game_question), as: :json
    end

    assert_response 204
  end
end
