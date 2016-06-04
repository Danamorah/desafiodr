class GameplayController < ApplicationController
  # before_action :set_opponent, only:[:round]
  # before_action :set_correct, only:[:match]
  # before_action :set_quote, only:[:match]
  # before_action :set_incorrect, only:[:match]
  # before_action :click, only: :match
  # before_save :click, only: :match

#  def create_room
#    @game = Game.create([player1: current_user, status: true])
#    redirect_to gameplay_round_path(game: @game)
#  end

  def index
  end

  def create
    games = Game.open_games

    if games.any?
      game = Game.pair_game?(games, current_user)
    else
      game = Game.create([player1: current_user, status: true])
    end

    redirect_to gameplay_round_path(game)
  end

  def round
    @game = Game.find(params[:id])
    @opponent = User.first
    #user.first es unknown
  end

  def match
    #jugabilidad
    #guardar resultados de matches 1 y 2
    @correct = Correct.all.sample
    @quote = Quote.search_by_word(@correct).sample
    @incorrect = @correct.incorrects.sample
    @incorrect_quote = @quote.content.gsub(@correct.word, @incorrect.word).split(' ')
    #@clicks = Click.sum
  end

  private

#  def click
#    Match.attempt.create
#  end

end
