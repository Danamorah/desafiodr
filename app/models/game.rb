class Game < ActiveRecord::Base
  has_many :rounds
  belongs_to :player1, :class_name => "User", :foreign_key => "player1"
  belongs_to :player2, :class_name => "User", :foreign_key => "player2"

  scope :open_games, -> {where(status: true)}

  def set_round user
    if self.rounds.empty?
      return round = self.rounds.create(number: 1)
    elsif self.rounds.count == 1
      return round = self.rounds.first
    else
      return false
    #elsif self.rounds.count == 1 && self.rounds.first.player1 == user
      #return round = self.rounds.create(number: 2)
    #elsif self.rounds.count <= 2 && self.rounds.first.player1 != user
      #return round = self.round.first
    #elsif self.rounds.count === 2
      #return round = self.round.second
    #else 
      #return false

    #elsif self.rounds.first.player2.nil? && self.rounds.first.player1 != user
    #  return round = self.round.first
    #elsif self.rounds.last.winner? && self.rounds.count == 2
    #  return false
    #else
    #  return round = self.rounds.create(number: 2)
    end
  end

  def last_round
    last_round = self.rounds.last
    #last_round.number unless last_round.nil?
  end

  def check_game_slot (game)
    self.game.present?
  end

  def last_game
    last_game = self.game(:id)
  end

#  def round_winner
#    @winner = Round.winner
#    if Round.present? && self.rounds.first.player1 != user
#      if player1.attempts < player2.attempts
#        winner = Round.number(1).player1
#      else
#        winner = Round.number(1).player2
#      end
#    end
#  end

  private

  def self.pair_game?(games, user)
    game = false
    games.each do |g|
      next if g.player1 == user
      g.player2 = user
      g.status = false
      return game = g if g.save
    end
    game = Game.create([player1: user, status: true])
  end


end
