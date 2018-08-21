require 'test_helper'

class SeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seeds_index_url
    assert_response :success
  end

end
