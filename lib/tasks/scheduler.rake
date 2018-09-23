desc "This task is called by the Heroku scheduler add-on - send daily poem"
task :send_daily_poem => :environment do
  puts "Sending emails"
  PoemsController.send_daily_poem
  puts "done."
end
