class RenameLongToLongitudeInAttractions < ActiveRecord::Migration[5.2]
  def change
    rename_column :attractions, :long, :longitude
  end
end
