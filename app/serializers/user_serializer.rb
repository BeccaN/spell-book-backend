class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :spell_books
end
