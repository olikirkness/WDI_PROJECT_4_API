require 'test_helper'

class ChallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challenge = challenges(:one)
  end

  test "should get index" do
    get challenges_url, as: :json
    assert_response :success
  end

  test "should create challenge" do
    assert_difference('Challenge.count') do
      post challenges_url, params: { challenge: { league_id_id: @challenge.league_id_id, reciever_id: @challenge.reciever_id, sender_id: @challenge.sender_id } }, as: :json
    end

    assert_response 201
  end

  test "should show challenge" do
    get challenge_url(@challenge), as: :json
    assert_response :success
  end

  test "should update challenge" do
    patch challenge_url(@challenge), params: { challenge: { league_id_id: @challenge.league_id_id, reciever_id: @challenge.reciever_id, sender_id: @challenge.sender_id } }, as: :json
    assert_response 200
  end

  test "should destroy challenge" do
    assert_difference('Challenge.count', -1) do
      delete challenge_url(@challenge), as: :json
    end

    assert_response 204
  end
end
