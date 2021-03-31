class ChatroomController < ApplicationController
    before_action :require_user
    def index
        @message = Message.new 
        @message= Message.all
    end
end
