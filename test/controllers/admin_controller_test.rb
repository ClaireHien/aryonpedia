require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get bestiary" do
    get admin_bestiary_url
    assert_response :success
  end

  test "should get user" do
    get admin_user_url
    assert_response :success
  end

  test "should get herbarium" do
    get admin_herbarium_url
    assert_response :success
  end

end
