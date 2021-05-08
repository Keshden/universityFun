class AddTeachAndStudentToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :teacher_id, :integer
    add_column :courses, :student_id, :integer
  end
end
