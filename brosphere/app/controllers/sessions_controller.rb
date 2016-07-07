class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      flash.now[:success] = "Cool bro " + user.name + "! You're in the brosphere."
      redirect_to root_path
    else
      flash.now[:danger] = "Authentication problem"
      render 'new'
    end
  end
end
