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
  def daily_poem
    @users = User.all
    @users.each do |user|
      @user = user
      @poem = Poem.all.sample
      mail(to: user.email, subject: 'This is your daily poem')
    end
  end
end
