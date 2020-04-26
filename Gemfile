source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.10'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.7'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
 gem 'therubyracer', #platforms: :ruby

# *Custom* - Added Bootstrap.
gem 'bootstrap-sass',       '3.4.1'
# *Custom* - Added to get Active record working.
gem 'arel', '6.0.0'
# *Custom* - Added for secure password hashing.
gem 'bcrypt',               '3.1.11'
# *Custom* - Added for fake users to database.
gem 'faker',                '1.8.7'
# *Custom* - Added pagination gems below.
gem 'will_paginate',           '3.1.6'
gem 'bootstrap-will_paginate', '1.0.0'
# *Custom* - Added for image uploads.
gem 'paperclip', '6.0.0'

gem 'activemerchant', '~> 1.78.0'

# Use jQuery as the JavaScript library
gem 'jquery-rails', '~> 4.3.3'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '5.1.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 1.0.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '10.0.2'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '2.0.2'
  
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.13'
  
end

group :production do
  gem 'pg',             '1.0.0'
  gem 'rails_12factor', '0.0.3'
  gem 'puma',           '3.12.4'

end