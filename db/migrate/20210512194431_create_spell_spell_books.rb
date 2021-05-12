class CreateSpellSpellBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :spell_spell_books do |t|
      t.integer :spell_id
      t.integer :spell_book_id
      t.timestamps
    end
  end
end
