module SessionsHelper
    #logs in given user
    def log_in(user)
        session[:user_id] = user.id
        # 20 Minute timeout
        session[:timeout] = Time.current + 20 * 60
    end

    #return current loggin-in user
    def current_user
        if (user_id = session[:user_id])
            @current_user ||= User.find_by(id: user_id)
        elsif (user_id = cookies.signed[:user_id])
            user = User.find_by(id: user_id)
            if user && user.authenticated?(cookies[:remember_token])
                log_in user
                @current_user = user
            end
        end
    end

    def current_user?(user)
        user == current_user
    end

    def logged_in?
        !current_user.nil? && session[:timeout] >= Time.current
    end

    def log_out
        forget(current_user)
        session.delete(:user_id)
        @current_user = nil
    end

    def store_location
        session[:forwarding_url] = request.original_url if request.get?
    end

    def logged_in_user
        unless logged_in?
            store_location
            flash[:danger] = "Session terminated or doesn't exist. Please log in."
            redirect_to login_url
        end
    end

    def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user

        redirect_to(root_url) unless current_user.is_admin == true
    end

    # Forgets a persistent session.
    def forget(user)
        user.forget
        cookies.delete(:user_id)
        cookies.delete(:remember_token)
    end

    # Remembers a user in a persistent session.
    def remember(user)
        user.remember
        cookies.permanent.signed[:user_id] = user.id
        cookies.permanent[:remember_token] = user.remember_token
    end

end
