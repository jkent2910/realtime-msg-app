class MessagesController < ApplicationController

  before_action :authenticate_user!

  def index
    @messages = Message.for_display
    @message  = current_user.messages.build
  end

  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast 'main_channel',
                                   message: render_message(message)

      head :ok
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    render :nothing => true
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end

  def render_message(message)
    render(partial: 'message', locals: { message: message })
  end
end