class GameplayController < ApplicationController
  # before_action :set_opponent, only:[:round]
  # before_action :set_correct, only:[:match]
  # before_action :set_quote, only:[:match]
  # before_action :set_incorrect, only:[:match]
  def game_room
    if params[:game_id].present? 
      Game.find(params[:game_id]).present? && Game.player2 == nil
      player2 = @user
    else
      @game = Game.new
      player1 = @user
    end
  end

  def round
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
end
