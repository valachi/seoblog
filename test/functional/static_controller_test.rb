require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get partners" do
    get :partners
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
