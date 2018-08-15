$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rubygems'
require 'dotenv/load'
Bundler.require :default, (ENV['RACK_ENV'] || 'development').to_sym


require 'kolab-slack-bot'
require 'kolab-slack-bot/web'

Thread.abort_on_exception = true

Thread.new do
  begin
    KolabSlackBot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run KolabSlackBot::Web
