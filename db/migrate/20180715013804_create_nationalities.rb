class CreateNationalities < ActiveRecord::Migration[5.2]
  def change
    create_table :nationalities do |t|
      t.text :name
      t.text :food_history
      t.text :famous_food
      t.text :flag_image
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
