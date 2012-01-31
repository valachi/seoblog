# encoding: UTF-8

class CommentsController < ApplicationController
  http_basic_authenticate_with :name => "valachi", :password => "avelina", :only => [:destroy]

  before_filter :get_post

  def new
    @comment = @post.comments.new
  end
  
  def create
    @comment = @post.comments.new(params[:comment])
    if @comment.save
      redirect_to post_path(@post), notice: "Спасибо за комментарий"
    else
      redirect_to :back
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private 
  
  def get_post
    @post = Post.find(params[:post_id])
  end

end
