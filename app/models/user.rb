class User < ApplicationRecord
  has_secure_password

  has_many :spell_books

  validates :email, 
    presence: true,
    uniqueness: {case_sensitive: false}

  validates :username, 
    presence: true,
    length: { minimum: 4, maximum: 12}

  validates :password,
    length: { minimum: 4, maximum: 254}
end
