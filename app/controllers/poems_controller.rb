class PoemsController < ApplicationController
    def self.send_daily_poem
      @users = User.all
      @poem = Poem.all.sample
      @users.each do |user|
        UserMailer.daily_poem(user, @poem).deliver_now
      end
    end
end
