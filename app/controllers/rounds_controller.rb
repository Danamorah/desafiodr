class RoundsController < ApplicationController

  def show
    @game = Game.find(params[:game_id])
    @round = Round.find(params[:id])
    @matches = @round.matches
  end

  def set_round
    @game = Game.find(params[:game_id])
    @opponent = User.first

    if @game.check_round == 0
      @round = @game.rounds.create(number: 1)
      redirect_to game_round_path(@game, @round)
    elsif @game.check_round == 1
      @round = @game.rounds.last
      if @round.check_match? current_user
        @round = @game.rounds.create(number: 2)
        redirect_to game_round_path(@game, @round)
      else
        redirect_to game_round_path(@game, @round)
      end
    elsif @game.check_round == 2
      @round = @game.rounds.first
      if @round.check_match? current_user
        @round = @game.rounds.create(number: 2)
        redirect_to game_round_path(@game, @round)
      else
        redirect_to game_round_path(@game, @round)
      end
    end
  end
end
