class PagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def homepage
    @posts = Post.all
    @post = Post.last
  end

  def show
    @post = Post.find(params[:id])
  end
end
