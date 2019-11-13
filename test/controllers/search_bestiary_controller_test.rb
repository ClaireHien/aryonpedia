require 'test_helper'

class SearchBestiaryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get search_bestiary_create_url
    assert_response :success
  end

end
