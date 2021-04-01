class MessagesController < ApplicationController
  before_action :require_user
  def new
  end
 def create
  message = current_user.messages.build(message_params)
  if message.save
    ActionCable.server.broadcast "chatroom_channel", foo: message.body
  end
   
 end
 private
 def message_params
  params.permit(:body)
 end
 
end
