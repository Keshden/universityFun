class AddSummaryItems < ActiveRecord::Migration[6.1]
  def change
    add_column :bookstores, :itemSummary, :string
    add_column :courses, :courseSummary, :string
    add_column :teachers, :teachersBio, :string
  end
end
