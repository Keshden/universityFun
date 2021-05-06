class Course < ApplicationRecord
  validates :courseName, presence: true, length: { minimum: 5, maximum: 50 }
  validates :courseType, presence: true, length: { minimum: 5, maximum: 100 }
  validates :courseCredits, presence: true
  validates :courseRequirementType, presence: true, length: { maximum: 10 }
  validates :courseIdentifier, presence: true, length: { maximum: 10 }
end