class SpellSpellBook < ApplicationRecord
  belongs_to :spell
  belongs_to :spell_book
end
