require "test_helper"

class GridControllerTest < ActionDispatch::IntegrationTest
  test "should get attendance" do
    get grid_attendance_url
    assert_response :success
  end
end
