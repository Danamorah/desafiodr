class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :attempts
      t.integer :user_id
      t.references :round, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
