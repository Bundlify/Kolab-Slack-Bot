require 'spec_helper'

describe SlackKolabBot::Commands::Joke do
  subject { SlackKolabBot::Bot.instance }

  it 'returns a pretty lame joke' do
    expect(message: "#{SlackRubyBot.config.user} tell me a joke", channel: 'channel').to respond_with_slack_message('There are 3 types of bots in this cloud: Those that are good at Math and those that are not.')
  end
end
