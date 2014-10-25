class GamesController < ApplicationController
  def index
    @games = Game.all.decorate
  end
end
