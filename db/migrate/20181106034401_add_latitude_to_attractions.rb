class AddLatitudeToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :latitude, :float
  end
end
