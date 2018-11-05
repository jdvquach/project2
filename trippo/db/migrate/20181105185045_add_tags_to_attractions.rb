class AddTagsToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :tags, :text
  end
end
