class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @posts = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private

  def restaurant_params
    params.require(:post).permit(:name, :body)
  end
end