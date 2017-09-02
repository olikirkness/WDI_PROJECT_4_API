class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :league, foreign_key: true
      t.integer :sender_id
      t.integer :reciever_id

      t.timestamps
    end
  end
end
