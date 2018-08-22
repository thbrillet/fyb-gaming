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

  def create
  end

  def new
  end

  private

  def set_membership
    @membership = Membership.find(params[:id])
  end
end
