class CommentsController < ApplicationController
  def index
    byebug
    @login = !!User.find_by(id: session[:userId])
    @home = Home.find(params[:home_id])
    if @home.comments[0] != nil
      @comments = @home.comments.all
      @comment = @comments[0]
    else
      @comment = Comment.new
      @comments = nil
    end


    puts @home
  end

  def create

    @home = Home.find(params[:home_id])
    params["comment"]
    @home.comments.create({name: params["comment"]["name"] , comment: params["comment"]["comment"], url: params["comment"]["url"].split("=")[1]})

    redirect_to home_comments_path
  end

end
