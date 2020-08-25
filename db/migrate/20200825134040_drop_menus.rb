class DropMenus < ActiveRecord::Migration[6.0]
  def change
    remove_column :cooks, :menu_id
    drop_table :menus
  end
end
