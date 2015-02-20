class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :meal

      t.timestamps
    end
  end
end
