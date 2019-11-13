require 'test_helper'

class SearchHerbariumControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get search_herbarium_create_url
    assert_response :success
  end

end
