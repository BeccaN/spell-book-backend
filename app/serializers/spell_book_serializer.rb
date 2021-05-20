class SpellBookSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :username

  has_many :spells, :through => :spell_spell_books
end
