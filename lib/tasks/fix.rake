namespace :fix do
  desc "Copy images from Game to Picture"
  task images: :environment do
    Game.all.each do |game|
      Picture.create(image: game.image, game: game)
    end
  end
end
