source 'https://rubygems.org'
ruby '2.1.3'

gem 'rails', '4.1.6'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Commented due to some issues with Figaro
# gem 'spring', group: :development

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
end

gem 'draper'
gem 'figaro'

# front-end
gem 'haml-rails'
gem 'semantic-ui-sass'

# images
gem 'fog'
gem 'mini_magick'
gem 'carrierwave'

gem 'rails_admin'

# tools
group :development do
  gem 'quiet_assets'
  gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
  gem 'pry-byebug'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
