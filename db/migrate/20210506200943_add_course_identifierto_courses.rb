class AddCourseIdentifiertoCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :courseIdentifier, :string
  end
end
