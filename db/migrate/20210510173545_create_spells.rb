class CreateSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :spells do |t|
      t.text :name
      t.text :desc
      t.text :higher_lvl
      t.text :page
      t.text :range_distance
      t.text :components
      t.text :material
      t.text :ritual
      t.text :duration
      t.text :casting_time
      t.integer :level
      t.text :school
      t.text :dnd_class

      t.timestamps
    end
  end
end
