class CreateIncorrects < ActiveRecord::Migration
  def change
    create_table :incorrects do |t|
      t.string :word
      t.integer :level
      t.references :correct, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
