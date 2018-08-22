class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    @group = Group.find(params[:group_id])
    @event.group = @group
    if @event.save
      redirect_to group_path(@group)
    else
      @members = @group.memberships.where(status: 'accepted').map(&:user)
      @requests = @group.memberships.where(status: 'pending')
      @events = Event.where(group: @group)
      render 'groups/show'
    end
  end

  def confirm
  end

  def cancel
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, 'date(1i)', 'date(2i)', 'date(3i)', :photo)
  end
end
