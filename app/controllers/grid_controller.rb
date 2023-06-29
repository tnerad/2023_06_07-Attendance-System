class GridController < ApplicationController
  def attendance
    @records = Attendance.all   #originaly @attendance
  end

  def update_attendance
    @records = Attendance.new(attendance_params)
    @records.save
      #@records = Attendance.all
      redirect_to grid_attendance_path, notice: 'Success!'

    #render :attendance, alert: 'Failure'
  end

  def summary
    @student_name = params[:student]
    @total_time_attended = Attendance.total_time_attended(@student_name)
  end

  def delete_item(id: :contrib_id)
    attendance = Attendance.find(params[id])
    attendance.destroy
    redirect_to grid_attendance_path #, notice: 'Item deleted'

    #     curl -X DELETE http://localhost:3000/grid/delete_item/7
  end

  private
  def attendance_params
    params.require(:attendance).permit(:student, :time_attended, :date)
  end
end
