class MessagesController < ApplicationController
  def create
    Message.create(message_params)
    redirect_to group_path(params[:group_id])
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
