class AddUniqueIndexToSpellSpellBooks < ActiveRecord::Migration[6.0]
  def change
    add_index :spell_spell_books, [:spell_book_id, :spell_id], unique: true
  end
end
