class RemoveSchedulleFromCooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :cooks, :schedulle
  end
end
