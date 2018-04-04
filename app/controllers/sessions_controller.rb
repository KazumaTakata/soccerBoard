class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.find_by(name: params["user"]["name"])
    if @user != nil
      if @user.authenticate(params["user"]["password"])
        session[:id] = @user.id
        redirect_to "/homes"
      else
        redirect_to "/login", notice: "login failed! Try Again"
      end
    else
      redirect_to "/login", notice: "login failed! Try Again" 
    end

  end
end
