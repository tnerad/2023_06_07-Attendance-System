class Attendance < ApplicationRecord
  validates :student, :time_attended, :date, presence: true

  belongs_to :student

  def self.total_time_attended(student)
    where(student_id: student).sum(:time_attended)
  end

  #def self.delete_item
    #item = find(id)
    #item.destroy
    #end

  #<%= form.label :student, 'Student Name' %>
  #<%= form.text_field :student %>

end
