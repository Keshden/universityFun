class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :courseName
      t.string :courseType
      t.integer :courseCredits
      t.timestamps
    end
  end
end
