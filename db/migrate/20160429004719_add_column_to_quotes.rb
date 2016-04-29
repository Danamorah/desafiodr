class AddColumnToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :author, :text
  end
end
