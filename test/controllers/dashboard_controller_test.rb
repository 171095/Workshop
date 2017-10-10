require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get admins" do
    get dashboard_admins_url
    assert_response :success
  end

  test "should get students" do
    get dashboard_students_url
    assert_response :success
  end

end
