class User < ApplicationRecord
  self.abstract_class = true

  with_options presence: true do
    validates :username, uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 50 }
  end
  
end