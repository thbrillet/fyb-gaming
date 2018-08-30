class GamesController < ApplicationController
  def show
    @membership          = Membership.new
    @game                = Game.find(params[:id])
    # @groups              = current_user.groups.where(game: @game) # Unquote if underneath bug
    @groups              = current_user.groups.where(game: halo5).where("memberships.status= 'accepted'")
    @groups_without_user = Group.where(game: @game).where.not(id: @groups.pluck(:id)).matching_with(current_user)
    @other_games_groups  = Group.where.not(game: @game).where.not(id: @groups.pluck(:id)).matching_with(current_user)
    @users               = User.matching_with(current_user, User.joins(:games).where("games.id=#{@game.id}")).limit(4)
  end
end
