class RemoveFieldsFromCooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :cooks, :languages, :schedulle
    rename_column :cooks, :address, :location
    add_column :cooks, :service, :text
  end
end
