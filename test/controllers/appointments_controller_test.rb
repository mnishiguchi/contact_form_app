require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get appointments_show_url
    assert_response :success
  end

  test "should get create" do
    get appointments_create_url
    assert_response :success
  end

end
