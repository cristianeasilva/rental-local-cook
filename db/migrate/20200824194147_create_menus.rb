class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :category
      t.string :appetizer
      t.string :main
      t.string :dessert

      t.timestamps
    end
  end
end
