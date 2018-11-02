class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.text :name
      t.text :address
      t.text :lat
      t.text :long
      t.text :description
      t.text :image
      t.integer :region_id

      t.timestamps
    end
  end
end
