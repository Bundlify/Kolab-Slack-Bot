require 'sinatra/base'

module SlackKolabBot
  class Web < Sinatra::Base
    get '/' do
      'Kolab Brötlokski - Slack Bot is Online'
    end
  end
end
