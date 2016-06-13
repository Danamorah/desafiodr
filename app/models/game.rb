class Game < ActiveRecord::Base
  has_many :rounds
  belongs_to :player1, :class_name => "User", :foreign_key => "player1"
  belongs_to :player2, :class_name => "User", :foreign_key => "player2"

  scope :open_games, -> {where(status: true)}

  def new_round
    #if last_round.nil?
    if self.rounds.empty? 
      round = rounds.build(number: 1)
    elsif self.rounds.count == 2
     return false
    else
      round = rounds.build(number: 2)
    end
    round.save
    round
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
