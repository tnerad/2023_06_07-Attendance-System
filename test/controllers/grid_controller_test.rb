require "test_helper"

class GridControllerTest < ActionDispatch::IntegrationTest
  test "should get attendance" do
    get grid_attendance_url
    assert_response :success
  end
  #works

  test "should get the summary" do
    get grid_summary_url
    assert_response :success
  end
  #works

  test "should delete item from the table" do
    attendance = create(:attendance)

    assert_difference('Attendance.count', -1) do
      delete grid_delete_item_url(contrib_id: attendance.id)
    end

    assert_response :success
  end
end
