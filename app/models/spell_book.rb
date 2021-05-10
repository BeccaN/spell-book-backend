class SpellBook < ApplicationRecord
  has_many :spells

  validates :title, presence: true
end
