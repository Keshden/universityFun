class Teacher < User
  validates :firstName, presence: true, length: { minimum: 3, maximum: 100 }
  validates :lastName, presence: true, length: { minimum: 3, maximum: 100 }
  has_secure_password
  validates :teachersbio, presence: true, length: { minimum: 15, maximum: 100 }
  
  validate :username_is_unique

  def username_is_unique
    self.errors.add(:username, 'is already taken') if Student.where(username: self.username).exists?
  end
end