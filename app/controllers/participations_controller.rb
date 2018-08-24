class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new(participation_params)
    @participation.user = current_user
    @participation.event = Event.find(params[:event_id])
    @participation.save
    redirect_to group_path(params[:group_id])
  end

  def update
    @participation = Participation.find(params[:id])
    if @participation.presence == 'yes'
      @participation.update(presence: 'no')
    elsif @participation.presence == 'no'
      @participation.update(presence: 'yes')
    end
    redirect_to group_path(@participation.event.group)
  end

  private

  def participation_params
    params.require(:participation).permit(:presence)
  end
end
