require "application_system_test_case"

class EventOptionsTest < ApplicationSystemTestCase
  setup do
    @event_option = event_options(:one)
  end

  test "visiting the index" do
    visit event_options_url
    assert_selector "h1", text: "Event Options"
  end

  test "creating a Event option" do
    visit event_options_url
    click_on "New Event Option"

    click_on "Create Event option"

    assert_text "Event option was successfully created"
    click_on "Back"
  end

  test "updating a Event option" do
    visit event_options_url
    click_on "Edit", match: :first

    click_on "Update Event option"

    assert_text "Event option was successfully updated"
    click_on "Back"
  end

  test "destroying a Event option" do
    visit event_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event option was successfully destroyed"
  end
end
