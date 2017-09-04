class RemovePlayerTwoRankChngeFromMatch < ActiveRecord::Migration[5.1]
  def change
    remove_column :matches, :player_two_rank_chnge, :text
  end
end
