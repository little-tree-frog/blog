class PagesController < ApplicationController
  def about
    @posts = Post.all
  end

  def homepage
    @posts = Post.all
  end
end
