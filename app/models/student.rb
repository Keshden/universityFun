class Student < User
  validates :firstName, presence: true, length: { minimum: 3, maximum: 100 }
  validates :lastName, presence: true, length: { minimum: 3, maximum: 100 }
  has_secure_password
  validates :age, presence: true
  validates :schoolYear, presence: true

  validate :username_is_unique

  def username_is_unique
    self.errors.add(:name, 'is already taken') if Teacher.where(username: self.username).exists?
  end
end