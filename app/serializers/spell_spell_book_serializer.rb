class SpellSpellBookSerializer < ActiveModel::Serializer
  attributes :id, :spell_id, :spell_book_id, :user_id

end