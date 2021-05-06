class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :username
      t.string :password_digest
      t.integer :age
      t.integer :schoolYear
      t.timestamps
    end
  end
end
