class AddPlayerOneAndPlayerTwoToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :player_one, :string
    add_column :matches, :player_two, :string
  end
end
