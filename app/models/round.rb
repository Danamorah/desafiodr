class Round < ActiveRecord::Base
  belongs_to :game
  has_many :matches
  has_one :player1, through: :game
  has_one :player2, through: :game

  def check_match? user
    return false if self.matches.empty?
    return true if self.matches.last.user == user
  end

end
