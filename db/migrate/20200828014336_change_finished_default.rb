class ChangeFinishedDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :finished, from: false, to: true
  end
end
