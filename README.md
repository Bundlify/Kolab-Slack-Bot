# Kolab Slack Bot

Made following https://github.com/slack-ruby/slack-ruby-bot/blob/master/TUTORIAL.md

This reports on amount of Stripe Customers & UptimeRobot stats from the last 24h.

You can run the report manually by running `bundle exec rake kolab:daily_report`

## Sample Output

```
:bar_chart::clipboard: *Daily Report:* :clipboard::bar_chart:

*UptimeRobot*
_Bundlify Marketing_: Uptime: 100.000% | Average response time: 94.000ms | SSL Expires: Friday Aug  2, 2019
_Bundlify Style Guide_: Uptime: 100.000% | Average response time: 228.000ms | SSL Expires: Friday Sep 28, 2018

*Stripe*
_Total Customers_: 194
_New Customers in last day_: 10
```

## Setting up

Push to heroku, populate your environmental configuration based on what you find in `.env.example`.

Then setup `bundle exec rake kolab:daily_report` as a scheduled task to run daily.

## What it reports

- UptimeRobot - Daily Uptime, response time and the SSL Certificate expiry date
- Stripe - Amount of customers.
