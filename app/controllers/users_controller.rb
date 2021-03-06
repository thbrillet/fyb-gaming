class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]

  def profile
    @user = current_user
  end

  def show
  end

  def update
    @user.update(user_params)
    redirect_to profile_path
  end

  def import_xbox_live_profile
    ImportXboxLiveProfileService.new(current_user, params[:gamertag]).call
    redirect_to profile_path
  rescue OpenURI::HTTPError
    flash[:alert] = "Issue while contacting Xbox Live servers, please try later!"
    redirect_to profile_path
  end

  private

  def user_params
    params.require(:user).permit(
      :interest_pve_pvp,
      :interest_mmo_smallteam,
      :interest_gameplay_story,
      :interest_compet_chill,
      :interest_action_strat
      )
  end

  def set_user
    @user = User.find(params[:id])
  end
end
