class AddStatusToGame < ActiveRecord::Migration
  def change
    add_column :games, :status, :boolean
  end
end
