class AddCourseRequirementType < ActiveRecord::Migration[6.1]
  def change
    add_column :bookstores, :bookRequirementType, :string
  end
end
