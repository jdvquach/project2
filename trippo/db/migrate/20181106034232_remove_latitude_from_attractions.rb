class RemoveLatitudeFromAttractions < ActiveRecord::Migration[5.2]
  def change
    remove_column :attractions, :latitude, :text
  end
end
