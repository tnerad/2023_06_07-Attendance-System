class Attendance < ApplicationRecord
  validates :student, :time_attended, :date, presence: true

  def self.total_time_attended(student)
    where(student: student).sum(:time_attended)
  end

  #def self.delete_item
    #item = find(id)
    #item.destroy
    #end

end
