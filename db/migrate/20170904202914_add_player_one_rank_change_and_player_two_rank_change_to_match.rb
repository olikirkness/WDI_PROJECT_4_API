class AddPlayerOneRankChangeAndPlayerTwoRankChangeToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :player_one_rank_change, :text
    add_column :matches, :player_two_rank_chnge, :text
  end
end
