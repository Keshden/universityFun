class AddCourseRequirementTypeFix < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :courseRequirementType, :string
    remove_column :bookstores, :bookRequirementType
  end
end
