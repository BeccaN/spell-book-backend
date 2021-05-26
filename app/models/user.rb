class User < ApplicationRecord
  has_secure_password

  has_many :spell_books

  validates :email, uniqueness: {case_sensitive: false}

end
