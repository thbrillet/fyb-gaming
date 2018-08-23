class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @games_names = Game.pluck(:name).uniq
    @users = User.all.limit(4)
    @groups = Group.all.limit(7)
    if params[:query].present?
      if Game.find_by(name: params[:query]).nil?
        flash.now[:alert] = 'This game does not exist!'
      else
        game = Game.find_by(name: params[:query])
        redirect_to game_path(game)
      end
    end
  end
end
