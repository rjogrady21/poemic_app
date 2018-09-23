class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    @poem = Poem.all.sample
    mail(to: @user.email, subject: 'Welcome to Poemic')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.daily_poem.subject
  #

  def daily_poem(user)
    @user = user
    @poem = Poem.all.sample
    puts "sending email to user #{user.id}"
    mail(to: @user.email, subject: 'Your daily poem')
    puts "sending email to user #{user.id}"
  end

  def send_daily_poem
    puts "I am inside daily poem"
    User.all.each do |user|
      puts "This is user #{user.id}"
      daily_poem(user).deliver_now
    end
    puts "sent to all users"
  end

end
