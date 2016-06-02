class Game < ActiveRecord::Base
  has_many :rounds
  belongs_to :player1, :class_name => "User", :foreign_key => "player1"
  belongs_to :player2, :class_name => "User", :foreign_key => "player2"
end
