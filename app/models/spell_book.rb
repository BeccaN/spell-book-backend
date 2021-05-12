class SpellBook < ApplicationRecord
  has_many :spell_spell_books
  has_many :spells, :through => :spell_spell_books

  validates :title, presence: true
end
