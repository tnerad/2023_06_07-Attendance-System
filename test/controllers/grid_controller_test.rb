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

  test "should delete item from the table 22222" do
    attendance = create(:attendance)

    assert_difference('Attendance.count', -1) do
      delete grid_delete_item_url(contrib_id: attendance.id)
    end

    assert_response :success
  end
  test "should delete item from the table" do
    attendance = Attendance.create(:student => 'test', :time_attended => 6, :date => '2023-06-12')

    delete grid_delete_item_url(contrib_id: attendance.id)
    assert_redirected_to grid_attendance_url
  end
  test "should get classroom" do
    get grid_classroom_url
    assert_response :success
  end
  test "should add a new student" do
    #student = Student.create(:student => "John Doe")
    post grid_add_new_student_url
    assert_redirected_to grid_classroom_url
  end
  test "should get edit_student" do
    get grid_edit_student_url
    assert_response :success
  end
end

