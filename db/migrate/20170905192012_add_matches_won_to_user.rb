class AddMatchesWonToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :matches_won, :integer
  end
end
