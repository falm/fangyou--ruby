require 'test_helper'

class Admin::IndexControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

end
