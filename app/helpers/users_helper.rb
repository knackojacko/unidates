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


    def find_match?(user_id, other_id)
        Matche.where(user_id: user_id).where(matched_user_id: other_id).empty?
    end

    def find_like?(user_id, other_id)
        Like.where(user_id: user_id).where(liked_user_id: other_id).empty?
    end

    def find_like_record?(other_id, user_id)
        Like.exists?(user_id: other_id, liked_user_id: user_id)
    end

    def like_eachother?(user_id, other_id)
        Like.exists?(user_id: user_id, liked_user_id: other_id) && 
            Like.exists?(user_id: other_id, liked_user_id: user_id)
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
