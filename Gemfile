source 'https://rubygems.org'

gem 'rails', '3.2.15'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem 'turnout' # https://github.com/biola/turnout
gem "tabs_on_rails" # http://www.simonecarletti.com/code/tabs_on_rails/
gem 'font-awesome-sass'
gem "paperclip", "~> 3.0"
gem "authlogic"
gem 'jquery-ui-rails'

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'faker'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  
  gem 'rdoc'
  gem 'annotate'
  gem 'rails-erd'
  
  gem 'sqlite3'
  #h ttp://www.rubyinside.com/how-to-rails-3-and-rspec-2-4336.html
    # EJECUTAR:
    # 1 terminal: rake watchr
    # 2 terminal: spork
    # 3 termina: rspec spec
    gem 'watchr'
    gem 'spork'

    # Profiling
    gem "lol_dba" #rake db:find_indexes
    gem 'quiet_assets' #turns off the Rails asset pipeline log
    #gem 'zeus'
    gem 'reek' #https://github.com/troessner/reek
    gem 'rails_best_practices' #http://rails-bestpractices.com - https://github.com/railsbp/rails_best_practices
    gem 'rack-mini-profiler' #http://railscasts.com/episodes/368-miniprofiler?language=es&view=asciicast
end

group :production do
  #HEROKU USA POSTGRESQL
  #gem 'pg',   '~> 0.15.1'
  #gem 'activerecord-postgresql-adapter'
  # gem 'newrelic_rpm'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
