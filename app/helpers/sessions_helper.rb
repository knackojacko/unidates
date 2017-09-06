module SessionsHelper
    #logs in given user
    def log_in(user)
        session[:user_id] = user.id
    end
    
    #return current loggin-in user
    def current_user
        if (user_id = session[:user_id])
            @current_user ||= User.find_by(id: user_id)
        end
    end

    def current_user?(user)
        user == current_user
    end
    
    def logged_in?
        !current_user.nil?
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end

    def store_location
        session[:forwarding_url] = request.original_url if request.get?
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
