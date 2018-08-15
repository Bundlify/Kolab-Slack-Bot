$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'dotenv/load'

require 'simplecov'
SimpleCov.start

require 'slack-ruby-bot/rspec'
require 'kolab-slack-bot'

require 'webmock/rspec'
require 'vcr'
require 'timecop'

# require 'pig_ci'
# PigCi.start

# WebMock.allow_net_connect!
WebMock.disable_net_connect!(allow_localhost: true)

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr_cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.allow_http_connections_when_no_cassette = true
  config.ignore_localhost = true
  config.ignore_hosts '127.0.0.1', 'localhost', 'lvh.me', '*.lvh.me'
end
