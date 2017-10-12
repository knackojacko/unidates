class SessionsController < ApplicationController
  def new
  end
 
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.email_confirmed
        log_in user
        remember user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        
        if current_user.is_admin?
          flash[:success] = "Hello admin"
          redirect_to users_path
        else

          if user.questionnaire.blank? 
            flash[:success] = "Welcome, please fillout your preferences!"
            redirect_to new_questionnaire_path
          else
            flash[:success] = "Login Successfully"
            redirect_to user
          end
          
        end
      else
        flash[:danger] = 'Please confirm your email'
        render 'new'
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
