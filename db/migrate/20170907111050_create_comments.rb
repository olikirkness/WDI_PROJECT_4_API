class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :sender_id
      t.integer :league_id

      t.timestamps
    end
  end
end
