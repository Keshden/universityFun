class Teacher < ApplicationRecord
  validates :firstName, presence: true, length: { minimum: 3, maximum: 100 }
  validates :lastName, presence: true, length: { minimum: 3, maximum: 100 }
  validates :username, presence: true, 
            uniqueness: { case_sensitive: false }
            length: { minimum: 3, maximum: 50 }
  has_secure_password
end