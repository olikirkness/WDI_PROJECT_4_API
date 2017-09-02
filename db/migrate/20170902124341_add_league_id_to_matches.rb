class AddLeagueIdToMatches < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :league_id, :integer
  end
end
