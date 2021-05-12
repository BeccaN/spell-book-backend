class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :desc, :higher_lvl, :page, :range_distance, :components, :material, :ritual, :duration, :casting_time, :level, :school, :dnd_class, :concentration
end
