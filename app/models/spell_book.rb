class SpellBook < ApplicationRecord
  belongs_to :user
  has_many :spell_spell_books, dependent: :destroy
  has_many :spells, :through => :spell_spell_books

  validates :title, presence: true

  def user_id
    self.user.id
  end
  
  def username
    self.user.username
  end
end
