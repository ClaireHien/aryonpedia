require 'test_helper'

class SearchHControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get search_h_show_url
    assert_response :success
  end

end
