require 'test_helper'

class GameAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_answer = game_answers(:one)
  end

  test "should get index" do
    get game_answers_url, as: :json
    assert_response :success
  end

  test "should create game_answer" do
    assert_difference('GameAnswer.count') do
      post game_answers_url, params: { game_answer: { game_question_id: @game_answer.game_question_id, title: @game_answer.title } }, as: :json
    end

    assert_response 201
  end

  test "should show game_answer" do
    get game_answer_url(@game_answer), as: :json
    assert_response :success
  end

  test "should update game_answer" do
    patch game_answer_url(@game_answer), params: { game_answer: { game_question_id: @game_answer.game_question_id, title: @game_answer.title } }, as: :json
    assert_response 200
  end

  test "should destroy game_answer" do
    assert_difference('GameAnswer.count', -1) do
      delete game_answer_url(@game_answer), as: :json
    end

    assert_response 204
  end
end
