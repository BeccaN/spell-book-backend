class SpellSpellBook < ApplicationRecord
  belongs_to :spell
  belongs_to :spell_book

  def spell_id
    self.spell.id
  end

  def spell_book_id
    self.spell_book.id
  end
end
