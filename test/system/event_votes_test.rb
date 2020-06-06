require "application_system_test_case"

class EventVotesTest < ApplicationSystemTestCase
  setup do
    @event_vote = event_votes(:one)
  end

  test "visiting the index" do
    visit event_votes_url
    assert_selector "h1", text: "Event Votes"
  end

  test "creating a Event vote" do
    visit event_votes_url
    click_on "New Event Vote"

    click_on "Create Event vote"

    assert_text "Event vote was successfully created"
    click_on "Back"
  end

  test "updating a Event vote" do
    visit event_votes_url
    click_on "Edit", match: :first

    click_on "Update Event vote"

    assert_text "Event vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Event vote" do
    visit event_votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event vote was successfully destroyed"
  end
end
