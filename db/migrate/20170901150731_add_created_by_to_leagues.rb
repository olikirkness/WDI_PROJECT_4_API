class AddCreatedByToLeagues < ActiveRecord::Migration[5.1]
  def change
    add_column :leagues, :created_by, :integer
  end
end
