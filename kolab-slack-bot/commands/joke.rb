module KolabSlackBot
  module Commands
    class Joke < SlackRubyBot::Commands::Base
      command 'tell me a joke' do |client, data, _match|
        client.say(channel: data.channel, text: 'There are 3 types of bots in this cloud: Those that are good at Math and those that are not.')
      end
    end
  end
end
