class CreateJoinTableLeaguesUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :leagues, :users do |t|
      # t.index [:league_id, :user_id]
      # t.index [:user_id, :league_id]
    end
  end
end
