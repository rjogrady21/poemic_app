# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
require 'whenever'
set :environment, :production
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}
#


every 2.minutes do
  runner "User.send_daily_poem"
end

# Learn more: http://github.com/javan/whenever
