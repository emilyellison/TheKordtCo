class UsersController < ApplicationController
  
  before_filter :redirect_if_not_admin
  
  def show
    @user = User.find(params[:id])
    @blog_posts = BlogPost.limit(100)
    @videos = Video.limit(100)
  end
  
end