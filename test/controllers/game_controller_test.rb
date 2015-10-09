require 'test_helper'

class GameControllerTest < ActionController::TestCase
  test "should get user_plays_rock" do
    get :user_plays_rock
    assert_response :success
  end

  test "should get user_plays_paper" do
    get :user_plays_paper
    assert_response :success
  end

  test "should get user_plays_scissors" do
    get :user_plays_scissors
    assert_response :success
  end

end
