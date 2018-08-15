require 'spec_helper'

describe KolabSlackBot::Reports::UptimeRobot, vcr: { erb: true } do
  let(:start_time){ VCR.current_cassette&.originally_recorded_at || Time.current }

  before do
    Timecop.travel( start_time )
  end

  context '#run' do
    it 'Returns the uptime & SSL status of monitors' do
      expect(KolabSlackBot::Reports::UptimeRobot.run).to eq("_Bundlify Marketing_: Uptime: 100.000% | Average response time: 88.500ms | SSL Expires: Friday Aug  2, 2019\n_Bundlify Style Guide_: Uptime: 100.000% | Average response time: 281.500ms | SSL Expires: Friday Sep 28, 2018")
    end
  end
end
