require 'test_helper'

class GameInstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_instance = game_instances(:one)
  end

  test "should get index" do
    get game_instances_url, as: :json
    assert_response :success
  end

  test "should create game_instance" do
    assert_difference('GameInstance.count') do
      post game_instances_url, params: { game_instance: { integer: @game_instance.integer, string: @game_instance.string } }, as: :json
    end

    assert_response 201
  end

  test "should show game_instance" do
    get game_instance_url(@game_instance), as: :json
    assert_response :success
  end

  test "should update game_instance" do
    patch game_instance_url(@game_instance), params: { game_instance: { integer: @game_instance.integer, string: @game_instance.string } }, as: :json
    assert_response 200
  end

  test "should destroy game_instance" do
    assert_difference('GameInstance.count', -1) do
      delete game_instance_url(@game_instance), as: :json
    end

    assert_response 204
  end
end
