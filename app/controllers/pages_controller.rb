class PagesController < ApplicationController
  def home
    @posts = Post.all
    @post = Post.new
  end
end
