class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.text :name
      t.text :image
      t.integer :category_id

      t.timestamps
    end
  end
end
