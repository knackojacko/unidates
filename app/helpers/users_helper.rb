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
    
    def get_user_preferences
        
        if current_user.preference == 'Men' 
            users = get_all_males 
        elsif current_user.preference == 'Women'
            users = get_all_females 
        else 
            users = get_all_users 
        end
    end
end
