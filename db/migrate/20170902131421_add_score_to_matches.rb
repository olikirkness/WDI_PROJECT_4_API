class AddScoreToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :score, :text
  end
end
