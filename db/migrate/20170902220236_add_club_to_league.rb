class AddClubToLeague < ActiveRecord::Migration[5.1]
  def change
    add_column :leagues, :club, :string
  end
end
