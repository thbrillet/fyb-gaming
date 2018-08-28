class EventsController < ApplicationController
  def create
    # CREATE EVENT
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

    # CREATE OBJECTIVES
      params['event']['objectives'].each do |event|
        @new_objective = Objective.new
        @new_objective.name = event['name']
        @new_objective.event_id = @event.id
        @new_objective.status = 'pending'
        @new_objective.save
      end
  end

  def confirm
    @event = Event.find(params[:id])
    @event.status = 'confirmed'
    @event.save
    redirect_to group_path(params[:group_id])
  end

  def cancel
    @event = Event.find(params[:id])
    @event.status = 'canceled'
    @event.save
    redirect_to group_path(params[:group_id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :time, :photo)
  end
end
