class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    
    if user.save!
      log_user_in!
    else
      redirect_to :new_user_url
    end
  end

  def show
    @user = current_user
    if @user
      render :show
    else
      render json: "No user found", status: 404
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
