class AddUserIdColumnToSpellBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :spell_books, :user_id, :integer
  end
end
