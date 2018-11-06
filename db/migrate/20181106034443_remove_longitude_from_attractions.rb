class RemoveLongitudeFromAttractions < ActiveRecord::Migration[5.2]
  def change
    remove_column :attractions, :longitude, :text
  end
end
