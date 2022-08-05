class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.text :address, null: false
      t.string :phone_number, null: false
      t.string :category, null: false

      t.timestamps
    end
    add_index :restaurants, :name
    add_index :restaurants, :address
  end
end
