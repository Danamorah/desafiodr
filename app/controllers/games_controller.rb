class GamesController < ApplicationController
  # before_action :set_opponent, only:[:round]
  # before_action :set_correct, only:[:match]
  # before_action :set_quote, only:[:match]
  # before_action :set_incorrect, only:[:match]
  # before_action :click, only: :match
  # before_save :click, only: :match
  # before_action :adding_counter, only:[:round]

#  def create_room
#    @game = Game.create([player1: current_user, status: true])
#    redirect_to gameplay_round_path(game: @game)
#  end

  def index
    @games = Game.where('player1 = :user OR player2 = :user',  user: current_user.id )
  end

  def create
    games = Game.open_games
    if games.any?
      game = Game.pair_game?(games, current_user)
    else
      game = Game.create([player1: current_user, status: true])
    end
    redirect_to game_rounds_path(game)
  end

end
