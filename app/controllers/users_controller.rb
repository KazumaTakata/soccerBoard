class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create({name: params["user"]["name"], password: params["user"]["password"]})
    byebug
    session[:userId] = @user.id
    redirect_to "/homes"
  end

  def index
  end

end
