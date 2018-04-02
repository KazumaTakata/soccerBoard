class HomesController < ApplicationController

  def index
    @home = Home.all
  end

  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(board_params)
    @home.save
    redirect_to @home
  end


  private

  def board_params
    params.require(:home).permit(:title, :description)
  end
end
