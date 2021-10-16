class MainController < ApplicationController

  def index
    user_ids = User.joins(:players).group('users.id').having("count(players.id)>=10")
    @users = User.where(id: user_ids).includes(:players)
  end
end
