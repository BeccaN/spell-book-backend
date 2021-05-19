class SpellBook < ApplicationRecord
  belongs_to :user
  has_many :spell_spell_books, dependent: :destroy
  has_many :spells, :through => :spell_spell_books

  validates :title, presence: true
end
