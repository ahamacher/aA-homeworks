class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def logged_in?
    !!current_user
  end

  def log_user_in!
    @user = User.find_by_credentials( params[:user][:email], params[:user][:password] )
    if @user
      @user.reset_session_token
      session[:session_token] = @user.session_token
      redirect_to user_url(@user)
    else
      redirect_to new_user_url
    end
  end


end
