class PoemsController < ApplicationController
  before_action :set_poem, only: [:show]
    def self.send_daily_poem
      @users = User.all
      @poem = Poem.all.sample
      @users.each do |user|
        UserMailer.daily_poem(user, @poem).deliver_now
      end
    end

    def show
    end

    private

    def set_poem
      @poem = Poem.find(params[:id])
    end
end
