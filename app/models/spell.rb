class Spell < ApplicationRecord
  has_many :spell_spell_books, dependent: :destroy
  has_many :spell_books, :through => :spell_spell_books
end
