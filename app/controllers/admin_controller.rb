class AdminController < ApplicationController

  def index; end


  def posts
    @posts = Post.all.includes(:user)
  end


  def comments; end

  def users; end


  def manage_users
  end


end