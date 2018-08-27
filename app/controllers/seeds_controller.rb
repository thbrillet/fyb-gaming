class SeedsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @users        = User.all
    @games        = Game.all
    @groups       = Group.all
    @memberships  = Membership.all
    @user_games   = UserGame.all
  end

  def components
    @users = User.limit(6)
  end
end
