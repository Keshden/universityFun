class AddRolesToTeachersAndStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :roles, :string, default: "Student"
    add_column :teachers, :roles, :string, default: "Teacher"
  end
end
