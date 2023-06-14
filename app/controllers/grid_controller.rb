class GridController < ApplicationController
  def attendance

  end

  def update_attendance
    @records = Attendance.all

    @attendance = Attendance.new()
    if @attendance.save
      redirect_to grid_attendance_path, notice: 'Success!'
    else
      render :attendance, alert: 'Failure'
    end
  end
end
