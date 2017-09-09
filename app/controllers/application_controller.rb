class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :cookie_set
  include SessionsHelper

  def cookie_set
    @user = current_user
    return unless current_user
    cookies[:user_name] = @user.id
  end

end
