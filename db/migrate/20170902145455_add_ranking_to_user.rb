class AddRankingToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ranking, :text
  end
end
