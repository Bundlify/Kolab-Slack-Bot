require 'spec_helper'

describe KolabSlackBot::Reports::Stripe, vcr: { erb: true } do
  let(:start_time){ VCR.current_cassette&.originally_recorded_at || Time.current }

  before do
    Timecop.travel( start_time )
  end

  context '#run' do
    it 'returns total and daily customer count' do
      expect(KolabSlackBot::Reports::Stripe.run).to eq("_Total Customers_: 194\n_New Customers in last day_: 10")
    end
  end
end
