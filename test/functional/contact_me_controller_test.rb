require 'test_helper'

class ContactMeControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get send_email" do
    get :send_email
    assert_response :success
  end

end
