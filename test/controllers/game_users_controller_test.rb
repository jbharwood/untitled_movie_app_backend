require 'test_helper'

class GameUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_user = game_users(:one)
  end

  test "should get index" do
    get game_users_url, as: :json
    assert_response :success
  end

  test "should create game_user" do
    assert_difference('GameUser.count') do
      post game_users_url, params: { game_user: { integer: @game_user.integer } }, as: :json
    end

    assert_response 201
  end

  test "should show game_user" do
    get game_user_url(@game_user), as: :json
    assert_response :success
  end

  test "should update game_user" do
    patch game_user_url(@game_user), params: { game_user: { integer: @game_user.integer } }, as: :json
    assert_response 200
  end

  test "should destroy game_user" do
    assert_difference('GameUser.count', -1) do
      delete game_user_url(@game_user), as: :json
    end

    assert_response 204
  end
end
