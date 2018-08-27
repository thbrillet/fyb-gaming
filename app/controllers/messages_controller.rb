class MessagesController < ApplicationController
  def create
    @message        = Message.new(message_params)
    @message.user   = current_user
    @message.group  = Group.find(params[:group_id])
    if @message.save
      redirect_to group_path(params[:group_id])
    else
      @members = @group.memberships.where(status: 'accepted').map(&:user)
      @requests = @group.memberships.where(status: 'pending')
      @events = Event.where(group: @group)
      render 'groups/show'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
