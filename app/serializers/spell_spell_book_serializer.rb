class SpellSpellBookSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :spell
  belongs_to :spell_book
end