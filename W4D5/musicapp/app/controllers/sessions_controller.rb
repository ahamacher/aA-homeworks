class SessionsController < ApplicationController

  def new
  end

  def create
    log_user_in!
  end

  def destroy
    @user = current_user
    @user.reset_session_token
    session[:session_token] = nil
    redirect_to new_session_url
  end
end
