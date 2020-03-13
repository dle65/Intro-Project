require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get V1" do
    get home_V1_url
    assert_response :success
  end

end
