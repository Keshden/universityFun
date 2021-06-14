class Bookstore < ApplicationRecord
  validates :bookName, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 100 }
  validates :authorName, presence: true, length: { minimum: 3, maximum: 100 }
  validates :bookPrice, presence: true
  validates :itemsummary, presence: true, length: { minimum: 15, maximum: 300 }
end