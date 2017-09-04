class AddPlayerTwoRankChangeFromMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :player_two_rank_change, :text
  end
end
