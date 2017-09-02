class RemoveRatingFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :ranking, :integer
  end
end
