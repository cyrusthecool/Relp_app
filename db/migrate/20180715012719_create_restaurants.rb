class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :image
      t.integer :nationality_id
      t.text :website
      t.text :address
      t.text :phone

      t.timestamps
    end
  end
end
