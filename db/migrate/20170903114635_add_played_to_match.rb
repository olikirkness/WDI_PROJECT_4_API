class AddPlayedToMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :played, :boolean
  end
end
