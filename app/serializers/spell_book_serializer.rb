class SpellBookSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :spells, :through => :spell_spell_books
end
