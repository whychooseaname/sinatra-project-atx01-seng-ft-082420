class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :image
      t.integer :cook_id
      t.integer :expo_id
    end
  end
end
