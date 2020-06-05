require "application_system_test_case"

class EventOrganizationsTest < ApplicationSystemTestCase
  setup do
    @event_organization = event_organizations(:one)
  end

  test "visiting the index" do
    visit event_organizations_url
    assert_selector "h1", text: "Event Organizations"
  end

  test "creating a Event organization" do
    visit event_organizations_url
    click_on "New Event Organization"

    click_on "Create Event organization"

    assert_text "Event organization was successfully created"
    click_on "Back"
  end

  test "updating a Event organization" do
    visit event_organizations_url
    click_on "Edit", match: :first

    click_on "Update Event organization"

    assert_text "Event organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Event organization" do
    visit event_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event organization was successfully destroyed"
  end
end
