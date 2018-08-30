class MembershipsController < ApplicationController
  before_action :set_membership, only: [:accept, :decline]

  def accept
    @membership.update(status: 'accepted')
    @membership.save
    redirect_to group_path(params[:group_id])
  end

  def decline
    @membership.update(status: 'declined')
    @membership.save
    redirect_to group_path(params[:group_id])
  end

  def new
    @membership = Membership.new
  end

  def create
    if current_user.nil?
      redirect_to new_user_session_path
    else
      group = Group.find(params[:group_id])
      new_membership = Membership.new(membership_params)

      new_membership.group_id = group.id
      new_membership.user_id = current_user.id

      new_membership.save
      redirect_to game_path(group.game)
    end
  end

  private

  def set_membership
    @membership = Membership.find(params[:id])
  end

  def membership_params
      params.require(:membership).permit(:message)
  end
end
