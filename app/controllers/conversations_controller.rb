class ConversationsController < ApplicationController
    def create

        # Close all other conversations
         @conversations = Conversation.all
        # @conversations.each do |conversation|
        #     @conversation = Conversation.find(conversation[:id])
        #
        #     session[:conversations].delete(@conversation.id)
        # end

        # Used for debugging conversation
        # request.session.each {|key, value|
        #     if key.to_s == "conversations"
        #         puts key.to_s + " --> " + value.to_s
        #     end
        # }

        # Create new conversation
        @conversation = Conversation.get(current_user.id, params[:user_id])
        add_to_conversations unless conversated?

        respond_to do |format|
            format.js
        end

    end

    def close
        @conversation = Conversation.find(params[:id])

        session[:conversations].delete(@conversation.id)

        respond_to do |format|
            format.js
        end
    end

    private

    def add_to_conversations
        session[:conversations] ||= []
        session[:conversations] << @conversation.id
    end

    def conversated?
        session[:conversations].include?(@conversation.id)
    end
end
