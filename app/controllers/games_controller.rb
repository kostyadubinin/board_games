class GamesController < ApplicationController
  def index
    @games = Game.all.decorate
  end

  def show
    @game = Game.find(params[:id]).decorate
  end
end
