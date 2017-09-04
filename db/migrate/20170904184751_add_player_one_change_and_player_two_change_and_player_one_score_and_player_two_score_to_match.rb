class AddPlayerOneChangeAndPlayerTwoChangeAndPlayerOneScoreAndPlayerTwoScoreToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :player_one_change, :integer
    add_column :matches, :player_two_change, :integer
    add_column :matches, :player_one_score, :integer
    add_column :matches, :player_two_score, :integer
  end
end
