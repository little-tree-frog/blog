class PagesController < ApplicationController
  def about
    @posts = Post.all
  end

  def homepage
    @posts = Post.all
    @post = Post.last
  end
end
