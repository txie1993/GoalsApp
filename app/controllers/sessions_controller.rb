class SessionsController < ApplicationController

  def new
  end

  def create
    username, password = session_params.values
    @user = User.find_by_credentials(username, password)
    if @user
      login(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ["invalid login"]
      render :new
    end
  end

  def destroy
    logout
    redirect_to new_session_url
  end

  private

  def session_params
    params.require(:user).permit(:username, :password)
  end
end
