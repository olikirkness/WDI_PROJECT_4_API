class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.integer :user_id
      t.string :title
      t.text :image

      t.timestamps
    end
  end
end
