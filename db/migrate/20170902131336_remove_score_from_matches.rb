class RemoveScoreFromMatches < ActiveRecord::Migration[5.1]
  def change
    remove_column :matches, :score, :integer
  end
end
