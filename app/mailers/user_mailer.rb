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
    mail(to: @user.email, subject: 'Your daily poem')
  end

  def send_daily_poem
    return "first line"
    User.all.each do |user|
      return "in the loop"
      daily_poem(user).deliver_now
    end
    return "ended loop"
  end

end
