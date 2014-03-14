class PostsController < ApplicationController

  def index
    @post  = Post.new
    @posts = Post.order("created_at").reverse_order
  end

  def new
    @post = Post.new
  end

  def create
    Post.create( params[:post] )

    redirect_to action: "index"
  end

end
