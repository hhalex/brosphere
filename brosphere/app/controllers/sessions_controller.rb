class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      flash.now[:success] = "Cool bro " + user.name + "! You're in the brosphere."
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "Authentication problem"
      render 'new'
    end
  end
end
