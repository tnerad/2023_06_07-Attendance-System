class ModifyAttendances < ActiveRecord::Migration[7.0]
  def change
    drop_table :attendances

    create_table :attendances do |t|
      t.integer :student_id
      t.integer :time_attended
      t.date :date
    end
  end
end
