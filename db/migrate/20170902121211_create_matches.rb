class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :score, array: true, default: []

      t.timestamps
    end
  end
end
