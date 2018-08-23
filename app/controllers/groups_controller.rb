class GroupsController < ApplicationController
  before_action :set_group, only: :show

  def show
    @members = @group.memberships.where(status: 'accepted').map(&:user)
    @requests = @group.memberships.where(status: 'pending')
    @event = Event.new
    @events = Event.where(group: @group)
    @participation = Participation.new
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end
end
