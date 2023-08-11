class Student < ApplicationRecord
  validates :student, presence: true

  has_many :attendances

  # didn't end up using this.....
  #def get_student_name
  # found_name = Student.student
  # return found_name
  #end
end
