require 'test_helper'

class MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get accept" do
    get memberships_accept_url
    assert_response :success
  end

  test "should get decline" do
    get memberships_decline_url
    assert_response :success
  end

  test "should get create" do
    get memberships_create_url
    assert_response :success
  end

  test "should get new" do
    get memberships_new_url
    assert_response :success
  end

end
