class UsersController < ApplicationController
    before_action :logged_in_user, only: [:edit, :update, :show, :index]
    before_action :correct_user, only: [:edit, :update]
    before_action :admin_user, only: [:index]

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

        # Avoid email conf in development
        if Rails.env.development?
            @user.email_confirmed = true;
        end

        if @user.save
            # Development
            if Rails.env.development?
                flash[:success] = "Account successfully created!"
            # Production
            else
                NewUserEmailMailer.notify_user(@user).deliver
                flash[:success] = "Check your email!"
            end

            redirect_to root_url
        else
            render 'new'
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            flash[:success] = "Profile updated"
            redirect_to @user
        else
            render 'edit'
        end
    end

    def destroy
        if current_user.is_admin?
            Questionnaire.where(user_id: params[:id]).destroy_all
            Reports.where(user_id: params[:id]).destroy_all
            User.find(params[:id]).destroy
        end
        redirect_to users_path
    end

    def ban
        @user = User.find(params[:id])
        @user.update_attribute(:ban, true)
        flash[:success] = "User banned"
        redirect_to users_path
    end

    def unban
        @user = User.find(params[:id])
        @user.update_attribute(:ban, false)
        flash[:success] = "User has been unbanned"
        redirect_to users_path
    end

    def add_like
        liked_user = (params[:liked_user])
        @user = User.find(params[:id])
        @like = Like.new(user_id: @user.id, liked_user_id: liked_user)
        @like.save
        redirect_to questionnaires_path
    end

    def add_unlike
        @user = User.find(params[:id])
        liked_user = (params[:liked_user])

        if helpers.find_match?(@user.id, liked_user) != true
            Matche.where(user_id: @user.id).where(matched_user_id: liked_user).destroy_all
            flash[:success] = "Removed from chat!"
        end

        Like.where(user_id: @user.id).where(liked_user_id: liked_user).destroy_all

        redirect_to questionnaires_path

    end

    def add_match
        matched_user = (params[:matched_user])
        @user = User.find(params[:id])
        @matche = Matche.new(user_id: @user.id, matched_user_id: matched_user)
        @match2 = Matche.new(user_id: matched_user, matched_user_id: @user.id)
        @matche.save
        @match2.save
        redirect_to questionnaires_path
    end

    def confirm_email
        user = User.find_by_confirm_token(params[:id])
        if user
            user.email_activate
            flash[:success] = "Welcome to the UniDates! Your email has been confirmed.
            Please log in."
            redirect_to login_path
        else
            flash[:error] = "Sorry. User does not exist"
            redirect_to root_url
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :dob, :gender, :preference, :avatar, :description,
                                     :password, :password_confirmation)
    end

end


