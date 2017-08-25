module UsersHelper
    def get_all_users
        User.where.not(id: current_user.id)
    end

    def get_all_males
        User.where.not(id: current_user.id).where(gender: 'Man')
    end

    def get_all_females
        User.where.not(id: current_user.id).where(gender: 'Woman')
    end

end
