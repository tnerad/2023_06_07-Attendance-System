class Attendance < ApplicationRecord
  validates :student, :time_attended, :date, presence: true
end
