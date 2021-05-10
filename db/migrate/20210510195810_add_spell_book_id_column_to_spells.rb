class AddSpellBookIdColumnToSpells < ActiveRecord::Migration[6.0]
  def change
    add_column :spells, :spell_book_id, :integer
  end
end
