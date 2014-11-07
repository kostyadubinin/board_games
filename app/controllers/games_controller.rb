class GamesController < ApplicationController
  def index
    @games = Game.includes(:pictures).page(params[:page]).decorate
  end

  def show
    @game = Game.find(params[:id]).decorate
  end
end
