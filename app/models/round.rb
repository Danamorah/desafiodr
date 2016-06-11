class Round < ActiveRecord::Base
  belongs_to :game
  has_many :matches

# round 1 y round 2
  
end
