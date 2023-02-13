class RemoveScoresFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :scores
  end
end
