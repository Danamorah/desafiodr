require 'test_helper'

class GameplayControllerTest < ActionController::TestCase
  test "should get game_room" do
    get :game_room
    assert_response :success
  end

  test "should get round" do
    get :round
    assert_response :success
  end

  test "should get match" do
    get :match
    assert_response :success
  end

end
