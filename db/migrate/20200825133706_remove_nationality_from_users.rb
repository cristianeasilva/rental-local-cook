class RemoveNationalityFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :nacionality
  end
end
