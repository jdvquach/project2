class ChangeLongitudeToBeFloatInAttractions < ActiveRecord::Migration[5.2]
  def change
    change_column :attractions, :longitude, :float

  end
end
