class RemoveUserIdFromLeagues < ActiveRecord::Migration[5.1]
  def change
    remove_column :leagues, :user_id, :integer
  end
end
