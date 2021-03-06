class SpellSpellBook < ApplicationRecord
  belongs_to :spell
  belongs_to :spell_book

  validates :spell_book_id, uniqueness: {scope: :spell_id}

  def spell_id
    self.spell.id
  end

  def spell_book_id
    self.spell_book.id
  end

  def user_id
    self.spell_book.user_id
  end
end
