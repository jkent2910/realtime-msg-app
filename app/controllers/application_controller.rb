class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    messages_path
  end

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end


end
