class CommentsController < ApplicationController
  def index

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
    @home.comments.create({name: params["comment"]["name"] , comment: params["comment"]["comment"]})

    redirect_to home_comments_path
  end

end
