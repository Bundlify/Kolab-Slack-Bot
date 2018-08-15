require 'spec_helper'

describe KolabSlackBot::Reports::Daily, vcr: true do
  context '#run' do
    it 'Posts the daily report to the passed in channel' do
      expect(KolabSlackBot::Reports::Stripe).to receive(:run).and_return('Stripe')
      expect(KolabSlackBot::Reports::UptimeRobot).to receive(:run).and_return('UptimeReport')
      expect(KolabSlackBot::Reports::Daily.client).to receive(:chat_postMessage).with(channel: '#staff', text: "📊📋 *Daily Report:* 📋📊\n\n*UptimeRobot*\nUptimeReport\n\n*Stripe*\nStripe", as_user: true)
      KolabSlackBot::Reports::Daily.run(channel: '#staff')
    end
  end
end
