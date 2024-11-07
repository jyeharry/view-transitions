class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_users

  def index
  end

  def users
    @img_url = CGI.unescape(params[:img_url])
    @user_name = CGI.unescape(params[:user_name])
  end

  private

  def set_users
    @users = [
      { user_name: "John Smith", img_url: ActionController::Base.helpers.asset_path("john-smith.svg") },
      { user_name: "Jane Smith", img_url: ActionController::Base.helpers.asset_path("jane-smith.svg") },
      { user_name: "Jack Doe", img_url: ActionController::Base.helpers.asset_path("jack-doe.svg") }
    ]
  end
end
