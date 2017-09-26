class ChatsController < ApplicationController
    before_action :logged_in_user
    
    def index
    
        session[:conversations] ||= []
        @users = User.all.where.not(id: current_user)
        @conversations = Conversation.includes(:recipient, :messages)
            .find(session[:conversations])

    end
    

    
end
