require 'test_helper'

class TokenControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get token_show_url
    assert_response :success
  end

end
