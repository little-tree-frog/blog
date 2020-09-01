class TagsController < ApplicationController

  def new
    @post_tag = PostTag.new
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @tags = Tag.where(id: params[:post_tag][:tag])
    @tags.each do |tag|
     @post_tag = PostTag.new(post: @post, tag: tag)
     @post_tag.save
  end

end
