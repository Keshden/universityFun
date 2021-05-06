class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :firstName
      t.string :lastName
      t.string :username
      t.string :password_digest
      t.timestamps
    end
  end
end
