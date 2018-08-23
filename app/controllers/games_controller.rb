class GamesController < ApplicationController
  def show
    @game                = Game.find(params[:id])
    @groups              = current_user.groups.where(game: @game)
    @groups_without_user = Group.where(game: @game).where.not(id: @groups.pluck(:id)).matching_with(current_user)
    @other_games_groups  = Group.where.not(game: @game).where.not(id: @groups.pluck(:id)).matching_with(current_user)
    @users               = User.matching_with(current_user).limit(4)
  end
end
