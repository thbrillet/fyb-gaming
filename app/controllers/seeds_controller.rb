class SeedsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :components]

  def index
    @users        = User.all
    @games        = Game.all
    @groups       = Group.all
    @memberships  = Membership.all
    @user_games   = UserGame.all
  end

  def components
    @user = User.first
  end
end
