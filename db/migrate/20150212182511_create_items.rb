class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.integer :menu_id
      t.text :description
      t.string :menu_category
      t.string :menu_tag

      t.timestamps
    end
  end
end
