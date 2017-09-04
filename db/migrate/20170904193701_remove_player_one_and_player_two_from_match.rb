class RemovePlayerOneAndPlayerTwoFromMatch < ActiveRecord::Migration[5.1]
  def change
    remove_column :matches, :player_one, :string
    remove_column :matches, :player_two, :string
  end
end
