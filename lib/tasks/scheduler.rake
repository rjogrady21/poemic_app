desc "This task is called by the Heroku scheduler add-on - send daily poem"
task :send_daily_email => :environment do
  puts "Sending emails"
  UserMailer.daily_poem.deliver_now
  puts "done."
end
