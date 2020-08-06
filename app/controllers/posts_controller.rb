class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end

  def new
    @posts = Post.new
  end

  def create
    @posts = Post.new(post_params)
    @posts.save

    redirect_to post_path(@posts)
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def update
    @posts = Post.find(params[:id])
    @posts.update(post_params)

    redirect_to post_path(@posts)
  end

  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy

    redirect_to posts_path
  end

  private

  def restaurant_params
    params.require(:post).permit(:name, :body)
  end
end
