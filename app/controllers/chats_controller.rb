class ChatsController < ApplicationController
    
    def index
        session[:conversations] ||= []
        @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
    end
    

    
end
