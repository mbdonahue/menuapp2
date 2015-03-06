class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :manager_name
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :neighborhood
      t.string :phone_number
      t.string :cuisine

      t.timestamps null: false
    end
  end
end
