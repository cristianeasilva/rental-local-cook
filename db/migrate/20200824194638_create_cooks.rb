class CreateCooks < ActiveRecord::Migration[6.0]
  def change
    create_table :cooks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.string :languages
      t.string :address
      t.string :schedulle
      t.float :price

      t.timestamps
    end
  end
end
