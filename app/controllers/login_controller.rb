class LoginController < ApplicationController
  def new
  end

  def create
    if user = User.Authenticate(params[:username],params[:password])
      session[:user_id] = user.id
      redirect_to "/"
    else
      redirect_to login_url, :alert => "Login failed"
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to login_url, :alert => "Logged out"
  end

end
