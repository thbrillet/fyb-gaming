class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new(participation_params)
    @participation.user = current_user
    @participation.event = Event.find(params[:event_id])
    @participation.save
    redirect_to group_path(params[:group_id])
  end

  private

  def participation_params
    params.require(:participation).permit(:presence)
  end
end
