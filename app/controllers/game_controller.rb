class GameController < ApplicationController
  def index
    @games = Game.all

    @games = @games.where('name ilike ?', "%#{params[:q]}%") if params[:q] && params[:q] != ''
  end
  def gamepage()
    @game = Game.find(params[:id])
  end
end