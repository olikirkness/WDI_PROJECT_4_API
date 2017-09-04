class AddPlayer1AndPlayer2ToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :player_1, :integer
    add_column :matches, :player_2, :integer
  end
end
