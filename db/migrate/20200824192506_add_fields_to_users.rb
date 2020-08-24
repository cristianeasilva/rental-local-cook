class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change

    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :url_facebook
      t.string :url_instagram
      t.string :url_twitter
      t.string :nacionality
    end
  end
end
