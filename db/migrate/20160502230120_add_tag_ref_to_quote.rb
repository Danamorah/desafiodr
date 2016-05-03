class AddTagRefToQuote < ActiveRecord::Migration
  def change
    add_reference :quotes, :tag, index: true, foreign_key: true
  end
end
