class Round < ActiveRecord::Base
  belongs_to :game
  has_many :matches

  
end
