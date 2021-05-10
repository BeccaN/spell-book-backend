class AddConcentrationColumnToSpells < ActiveRecord::Migration[6.0]
  def change
    add_column :spells, :concentration, :string
  end
end