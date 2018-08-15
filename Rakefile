$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'dotenv/load'
Bundler.require :default, (ENV['RACK_ENV'] || 'development').to_sym

require 'kolab-slack-bot'

namespace :kolab do
  desc 'Show the Daily report on how the company is going'
  task :daily_report do
    KolabSlackBot::Reports::Daily.run(channel: ENV['SLACK_CHANNEL'])
  end
end
