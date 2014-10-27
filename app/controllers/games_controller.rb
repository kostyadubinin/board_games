class GamesController < ApplicationController
  def index
    @games = Game.page(params[:page]).decorate
  end

  def show
    @game = Game.find(params[:id]).decorate
  end
end
