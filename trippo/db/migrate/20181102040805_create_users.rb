class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.boolean :admin
      t.text :password_digest
      t.text :image

      t.timestamps
    end
  end
end
