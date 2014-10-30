namespace :fix do
  desc "Copy images from Game to Picture"
  task images: :environment do
    Game.all.each do |game|
      Picture.create(remote_image_url: game.image_url, game: game)
    end
  end
end
