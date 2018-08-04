module SlackKolabBot
  module Commands
    class DailyReport < SlackRubyBot::Commands::Base
      command 'show daily report' do |client, data, _match|
        client.say(channel: data.channel, text: SlackKolabBot::Reports::Daily.text)
      end
    end
  end
end
