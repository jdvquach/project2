class RemoveUserIdFromAttractions < ActiveRecord::Migration[5.2]
  def change
    remove_column :attractions, :user_id, :integer
  end
end
