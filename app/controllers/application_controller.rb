class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :banned?
  before_action :cookie_set


  def cookie_set
    @user = current_user
    return unless current_user
    cookies[:user_name] = @user.id
  end

  def banned?
    if logged_in? && current_user.ban == true
      log_out 
      flash[:danger] = "This account has been banned, please contact the administrator here"
      redirect_to root_url
    end
  end
  
end
