class WelcomeController < ApplicationController
  def index
    @games = [
      { name: "Monopoly", age: 8,  players_min: 2, players_max: 6,
        thumb: "http://www.edinphoto.org.uk/0_MY_P_I/0_my_photographs_london_monopoly_board_ju31.jpg",
        desc: "Monopoly is an American-originated board game originally published by Parker Brothers." },
      { name: "Munchkin", age: 10, players_min: 3, players_max: 6,
        thumb: "http://cravengames.com/wp-content/uploads/2012/05/munchkingameplay.jpg",
        desc: "Munchkin is a dedicated deck card game by Steve Jackson Games, written by Steve Jackson and illustrated by John Kovalic." },
      { name: "The Settlers of Catan", age: 10, players_min: 3, players_max: 4,
        thumb: "http://divisbyzero.files.wordpress.com/2010/01/251396042_2a279b4fc0_b.jpg",
        desc: "The Settlers of Catan is a multiplayer board game designed by Klaus Teuber and first published in 1995 in Germany." }
    ]

    @games.map! { |game| OpenStruct.new(game) }
  end
end
