require 'spec_helper'

describe SlackKolabBot::Reports::Daily, vcr: true do
  context '#run' do
    it 'Posts the daily report to the passed in channel' do
      expect(SlackKolabBot::Reports::Stripe).to receive(:run).and_return('Stripe')
      expect(SlackKolabBot::Reports::UptimeRobot).to receive(:run).and_return('UptimeReport')
      expect(SlackKolabBot::Reports::Daily.client).to receive(:chat_postMessage).with(channel: '#staff', text: "📊📋 *Daily Report:* 📋📊\n\n*UptimeRobot*\nUptimeReport\n\n*Stripe*\nStripe", as_user: true)
      SlackKolabBot::Reports::Daily.run(channel: '#staff')
    end
  end
end
