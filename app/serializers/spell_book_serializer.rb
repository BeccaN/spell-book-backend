class SpellBookSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id

  has_many :spells, :through => :spell_spell_books
end
