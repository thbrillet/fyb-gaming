require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get events_create_url
    assert_response :success
  end

  test "should get new" do
    get events_new_url
    assert_response :success
  end

  test "should get confirm" do
    get events_confirm_url
    assert_response :success
  end

  test "should get cancel" do
    get events_cancel_url
    assert_response :success
  end

end
