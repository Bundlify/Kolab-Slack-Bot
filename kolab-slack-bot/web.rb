require 'sinatra/base'

module KolabSlackBot
  class Web < Sinatra::Base
    get '/' do
      'Kolab Brötlokski - Slack Bot is Online'
    end
  end
end
