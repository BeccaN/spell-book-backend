class User < ApplicationRecord
  has_secure_password

  has_many :spell_books

  validates :username, uniqueness: { case_sensitive: false }
end
