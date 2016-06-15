class MatchesController < ApplicationController
end

def show
  @correct = Correct.all.sample
  @quote = Quote.search_by_word(@correct).sample
  @incorrect = @correct.incorrects.sample
  @incorrect_quote = @quote.content.gsub(@correct.word, @incorrect.word).split(' ')
end


def set_match
  @game = Game.find(params[:game_id])
  @round = Round.find(params[:round_id])

  @match = @round.matches.build(user: current_user)


end

