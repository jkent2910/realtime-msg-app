class MessagesController < ApplicationController



  private

  def message_params
    params.require(:message).permit(:content)
  end
end