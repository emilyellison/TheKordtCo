class BlogPostsController < ApplicationController
  
  before_filter :redirect_if_not_admin, only: [ :new, :create, :edit, :update, :destroy ]
  before_filter :only => [ :show ] do |action|
    redirect_if_not_authorized(BlogPost.find(params[:id]))
  end
  
  def index
    if @current_user.present? && @current_user.admin == true
      @blog_posts = BlogPost.limit(100)
    else
      @blog_posts = BlogPost.ready_for_display.limit(100)
    end
  end
  
  def new
    @blog_post = BlogPost.new
  end
  
  def create
    @blog_post = BlogPost.new(params[:blog_post])
    if @blog_post.save
      flash[:success] = 'Your blog post has been created.'
      redirect_to blog_post_url(@blog_post)
    else
      render :new
    end
  end
  
  def show
    @blog_post = BlogPost.find(params[:id])
  end
  
  def edit
    @blog_post = BlogPost.find(params[:id])
  end
  
  def update
    @blog_post = BlogPost.find(params[:id])
    if @blog_post.update_attributes(params[:blog_post])
      flash[:success] = 'Your blog post has been updated.'
      redirect_to blog_post_url(@blog_post)
    else
      render :edit
    end
  end
  
  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy
    flash[:success] = 'Your blog post has been destroyed'
    redirect_to blog_posts_url
  end
  
end