class ChangeLatitudeToBeFloatInAttractions < ActiveRecord::Migration[5.2]
  def change
    change_column :attractions, :latitude, :float
  end
end
