class AddNameToCooks < ActiveRecord::Migration[6.0]
  def change
    add_column :cooks, :name, :string
  end
end
