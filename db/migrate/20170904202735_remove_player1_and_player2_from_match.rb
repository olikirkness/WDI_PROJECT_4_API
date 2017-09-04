class RemovePlayer1AndPlayer2FromMatch < ActiveRecord::Migration[5.1]
  def change
    remove_column :matches, :player_1, :integer
    remove_column :matches, :player_2, :intege
  end
end
