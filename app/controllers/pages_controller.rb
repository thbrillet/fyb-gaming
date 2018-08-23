class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @games_names = Game.pluck(:name).uniq
    @users = User.all.matching_with(current_user).limit(4)
    @user_groups = current_user.groups
    @new_groups = Group.where.not(id: @user_groups.pluck(:id)).where(game_id: current_user.games.pluck(:id)).matching_with(current_user)
    @new_games = Group.where.not(id: @user_groups.pluck(:id)).where.not(game_id: current_user.games.pluck(:id)).matching_with(current_user)
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
