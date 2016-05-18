class GameplayController < ApplicationController
  before_action :set_opponent, only:[:round]



  def game_room
    #aprete new game, redirigir a round
  end

  def round
    #va a llamar a contrincante (user, bot)
    #next -> redirigir a match
  end

  def match
    #va a llamar correctas (segun nivel)
    #luego, quotes que contengan esa palabra correcta
    #muestra la quote con su version incorrecta de esa palabra
    #jugabilidad
    #guardar resultados de matches 1 y 2
  end

private

  def set_opponent
    @opponent ||= User.all.sample
  end

  def round_2
  end

  def match_1
  end

  def match_2
  end

end
