ruby File.read('.ruby-version').chomp

source 'https://rubygems.org' do

  gem 'rake'
  gem 'slack-ruby-bot'
  gem 'puma'
  gem 'sinatra'
  gem 'dotenv'
  gem 'celluloid-io'

  # APIs report on
  gem 'uptimerobot'
  gem 'stripe'

  group :development, :test do
    gem 'foreman'
  end

  group :test do
    gem 'rspec'
    gem 'rack-test'
    gem 'vcr'
    gem 'webmock'
    gem 'simplecov', require: false
    gem 'timecop'
  end
end
