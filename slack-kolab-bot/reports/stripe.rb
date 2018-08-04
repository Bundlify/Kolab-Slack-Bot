require 'stripe'

module SlackKolabBot
  module Reports
    class Stripe
      def self.run
        ::Stripe.api_key = ENV['STRIPE_SECRET_KEY']
        [
          "_Total Customers_: #{::Stripe::Customer.list(limit: 0, include: [:total_count]).total_count}",
          "_New Customers in last day_: #{::Stripe::Customer.list(limit: 0, created: { gt: Time.now.to_i - 86_400 }, include: [:total_count]).total_count}"
        ].join("\n")
      end
    end
  end
end

