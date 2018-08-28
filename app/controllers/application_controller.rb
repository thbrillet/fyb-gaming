class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

# Make sure your production HOST variable is set with your domain name.
  def default_url_options
    { host: ENV["http://www.fyb-gaming.online/"] || "localhost:3000" }
  end
end


