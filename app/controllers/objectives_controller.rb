class ObjectivesController < ApplicationController
  def create
  end

  def update
    @objective = Objective.find(params[:id])
    @objective.status = 'ok'
    @objective.save
    redirect_to group_path(params[:group_id])
  end

  private

  def event_params
    params.require(:objective).permit(:name)
  end
end
