class GameplayController < ApplicationController
  # before_action :set_opponent, only:[:round]
  # before_action :set_correct, only:[:match]
  # before_action :set_quote, only:[:match]
  # before_action :set_incorrect, only:[:match]

#  def create_room
#    @game = Game.create([player1: current_user, status: true])
#    redirect_to gameplay_round_path(game: @game)
#  end

  def index
  end

  def create
    #Game.find(params[:game_id]).present?
    games = Game.where(status: true)

    if games.any?
      games.each do |game|
        next if game.player1 == current_user
        game.player2 = current_user
        game.status = false
        break game if game.save
      end
      game = Game.create([player1: current_user, status: true]) unless game
    else
      game = Game.create([player1: current_user, status: true])
    end

    redirect_to gameplay_round_path(game: game)
  end

  def round
    if params[:game].present?
      @game = Game.find(params[:game])
    end
     @opponent = User.all.sample
     #mostrar player 1 vs player 2
  end

  def match
    #jugabilidad
    #guardar resultados de matches 1 y 2
    @correct = Correct.all.sample
    @quote = Quote.search_by_word(@correct).sample
    @incorrect = @correct.incorrects.sample
    @incorrect_quote = @quote.content.gsub(@correct.word, @incorrect.word).split(' ')
  end

  private

  def player2_empty?
    @game.player2 = nil
    @game.status = true
  end

end
#&& Game.find(params[:player2]) == nil