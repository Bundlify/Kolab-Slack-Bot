require 'uptimerobot'

module KolabSlackBot
  module Reports
    class UptimeRobot
      def self.run
        ::UptimeRobot::Client.new(api_key: ENV['UPTIMEROBOT_API_KEY']).getMonitors({
          monitors: ENV['UPTIMEROBOT_MONITORS'],
          custom_uptime_ranges: [
            time_now_to_i - 86_400,
            time_now_to_i
          ].join('_'),
          response_times: 1,
          response_times_average: 1_440
        })['monitors'].collect do |monitor|
          [
            "_#{monitor['friendly_name']}_:",
            [
              "Uptime: #{monitor['custom_uptime_ranges']}%",
              "Average response time: #{monitor['average_response_time']}ms",
              "SSL Expires: #{Time.at(monitor['ssl']['expires']).strftime('%A %b %e, %Y')}"
            ].join(' | ')
          ].join(' ')
        end.join("\n")
      end

      private
      def self.time_now_to_i
        @time_now ||= Time.now.to_i
      end
    end
  end
end

