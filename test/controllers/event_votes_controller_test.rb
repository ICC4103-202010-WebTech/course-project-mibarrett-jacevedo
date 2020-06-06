require 'test_helper'

class EventVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_vote = event_votes(:one)
  end

  test "should get index" do
    get event_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_event_vote_url
    assert_response :success
  end

  test "should create event_vote" do
    assert_difference('EventVote.count') do
      post event_votes_url, params: { event_vote: {  } }
    end

    assert_redirected_to event_vote_url(EventVote.last)
  end

  test "should show event_vote" do
    get event_vote_url(@event_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_vote_url(@event_vote)
    assert_response :success
  end

  test "should update event_vote" do
    patch event_vote_url(@event_vote), params: { event_vote: {  } }
    assert_redirected_to event_vote_url(@event_vote)
  end

  test "should destroy event_vote" do
    assert_difference('EventVote.count', -1) do
      delete event_vote_url(@event_vote)
    end

    assert_redirected_to event_votes_url
  end
end
