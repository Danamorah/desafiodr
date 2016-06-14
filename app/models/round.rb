class Round < ActiveRecord::Base
  belongs_to :game
  has_many :matches
  has_one :player1, through: :game
  has_one :player2, through: :game

# round 1 y round 2
  
end
