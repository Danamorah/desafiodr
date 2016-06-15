class Game < ActiveRecord::Base
  has_many :rounds, dependent: :destroy
  belongs_to :player1, :class_name => "User", :foreign_key => "player1"
  belongs_to :player2, :class_name => "User", :foreign_key => "player2"

  scope :open_games, -> {where(status: true)}

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

  def check_round
    return 0 if self.rounds.empty?
    return 1 if self.rounds.last.number == 1
    return 2 if self.rounds.last.number == 2
  end

end
