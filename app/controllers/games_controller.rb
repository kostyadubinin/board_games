class GamesController < ApplicationController
  def index
    @games = Game.includes(:pictures)
    @games = GamesSorter.new(params.slice(:sort_by, :sort_dir)).sort(@games)
    @games = @games.page(params[:page]).decorate
  end

  def show
    @game = Game.find(params[:id]).decorate
  end
end
