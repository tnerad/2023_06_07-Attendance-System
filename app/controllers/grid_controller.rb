class GridController < ApplicationController
  skip_before_action :verify_authenticity_token
  def attendance
    #@students = Student.all
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
    #not working reworked into ---def total_attendance---

    #earlier attempt
    #@student_name = params[:student_summary]&.fetch(:student_id, nil)
    #@student_name = Student.find(params[:student_params]).get_student_name

    #later attempt
    #if @selected_student == nil

    #elsif
    # @selected_student = Student.find(params[:student_id])
    # @total_time_attended = Attendance.total_time_attended(@selected_student)
    #end
  end

  def total_attendance
    @student = Student.find(params[:id])
    @total_time_attended = Attendance.total_time_attended(@student)
  end

  def delete_item(id: :contrib_id)
    attendance = Attendance.find(params[id])
    attendance.destroy
    redirect_to grid_attendance_path #, notice: 'Item deleted'

    #     curl -X DELETE http://localhost:3000/grid/delete_item/7
  end

  def classroom
    @students = Student.all()
  end

  def add_new_student
    @students = Student.new(student_params) #works only with specified parameters
    @students.save
    redirect_to grid_classroom_path
  end

  def edit_student
    #renders view "edit_student.html.erb"
    @students = Student.find(params[:id])
    #if
    #@students.update(student_params)
    #redirect_to grid_classroom_path
      #else
      #redirect_to grid_edit_student_path
      #end
  end

  def update_student
    #does the actual "updating" of the student
    @students = Student.find(params[:id])
    @students.update(student_params)
    redirect_to grid_classroom_path
  end

  def delete_student(student_id: :student_id)
    classmate = Student.find(params[student_id])
    classmate.destroy
    redirect_to grid_classroom_path
  end

  private
  def attendance_params
    params.require(:attendance).permit(:student_id, :time_attended, :date)
  end
  def student_params
    params.require(:student).permit(:student)
  end
end
