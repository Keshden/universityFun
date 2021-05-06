class CreateBookstore < ActiveRecord::Migration[6.1]
  def change
    create_table :bookstores do |t|
      t.string :bookName
      t.string :authorName
      t.integer :bookPrice
      t.timestamps
    end
  end
end
