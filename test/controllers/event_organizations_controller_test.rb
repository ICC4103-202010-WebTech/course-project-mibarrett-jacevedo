require 'test_helper'

class EventOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_organization = event_organizations(:one)
  end

  test "should get index" do
    get event_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_event_organization_url
    assert_response :success
  end

  test "should create event_organization" do
    assert_difference('EventOrganization.count') do
      post event_organizations_url, params: { event_organization: {  } }
    end

    assert_redirected_to event_organization_url(EventOrganization.last)
  end

  test "should show event_organization" do
    get event_organization_url(@event_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_organization_url(@event_organization)
    assert_response :success
  end

  test "should update event_organization" do
    patch event_organization_url(@event_organization), params: { event_organization: {  } }
    assert_redirected_to event_organization_url(@event_organization)
  end

  test "should destroy event_organization" do
    assert_difference('EventOrganization.count', -1) do
      delete event_organization_url(@event_organization)
    end

    assert_redirected_to event_organizations_url
  end
end
