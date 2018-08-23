class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @users = User.all.limit(4)
    @groups = Group.all.limit(7)
    @membership = Membership.new
  end
end
