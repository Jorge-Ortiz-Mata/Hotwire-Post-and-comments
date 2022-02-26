class PagesController < ApplicationController
  def home
    @posts = Post.order('created_at DESC')
    @post = Post.new
  end
end
