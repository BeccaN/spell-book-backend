class RemoveSpellBookIdColumnFromSpells < ActiveRecord::Migration[6.0]
  def change
    remove_column :spells, :spell_book_id
  end
end
