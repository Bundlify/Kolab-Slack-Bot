module SlackKolabBot
  module Reports
    class Daily
      def self.run(channel: '#_bots')
        client.chat_postMessage(channel: channel, text: text, as_user: true)
      end

      private
      def self.text
        [
          "📊📋 *Daily Report:* 📋📊",
          "*UptimeRobot*\n#{SlackKolabBot::Reports::UptimeRobot.run}",
          "*Stripe*\n#{SlackKolabBot::Reports::Stripe.run}"
        ].join("\n\n")
      end

      def self.client
        @client ||= Slack::Web::Client.new(token: ENV['SLACK_API_TOKEN'])
      end
    end
  end
end
