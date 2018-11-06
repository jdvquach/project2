class AddLongitudeToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :longitude, :float
  end
end
