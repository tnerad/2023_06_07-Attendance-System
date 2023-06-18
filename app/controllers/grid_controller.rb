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
  private

  def attendance_params
    params.require(:attendance).permit(:student, :time_attended, :date)
  end
end
