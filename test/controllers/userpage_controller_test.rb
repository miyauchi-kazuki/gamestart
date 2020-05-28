require 'test_helper'

class UserpageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get userpage_new_url
    assert_response :success
  end

end
