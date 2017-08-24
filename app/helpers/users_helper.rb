module UsersHelper
    def get_all_users
        @user = User.all
    end
end
