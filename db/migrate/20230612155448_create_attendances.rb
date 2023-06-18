class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.string :student
      t.integer :time_attended
      t.date :date

      t.timestamps
    end
  end
end
