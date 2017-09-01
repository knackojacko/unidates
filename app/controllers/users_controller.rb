class UsersController < ApplicationController

    def index
        @user = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            NewUserEmailMailer.notify_user(@user).deliver
            flash[:success] = "Check your email!"
            redirect_to root_url
        else
            render 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :dob, :gender, :preference,
                                     :password, :password_confirmation)
    end

end
