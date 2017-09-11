module UsersHelper
    def get_all_users
        User.where.not(id: current_user.id).where.not(is_admin: true)
    end

    def get_all_males
        User.where.not(id: current_user.id).where(gender: 'Man')
    end

    def get_all_females
        User.where.not(id: current_user.id).where(gender: 'Woman')
    end
    
    def find_user(reported_user_id)
        if reported_user_id == 0
            reported_user_id = 1
        end
        User.find(reported_user_id)
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
