require 'spec_helper'

describe SlackKolabBot::Commands::DailyReport do
  subject { SlackKolabBot::Bot.instance }

  it 'returns a pretty lame joke' do
    expect(SlackKolabBot::Reports::Daily).to receive(:text).and_return('Daily Report')
    expect(message: "#{SlackRubyBot.config.user} show daily report", channel: 'channel').to respond_with_slack_message('Daily Report')
  end
end
