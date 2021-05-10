class CreateSpellBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :spell_books do |t|
      t.text :title

      t.timestamps
    end
  end
end
