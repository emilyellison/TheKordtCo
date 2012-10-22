class CommentsController < ApplicationController
  
  before_filter :redirect_if_not_admin, only: [ :manage, :update, :destroy ]
  
  def manage
    @videos = Video.limit(100)
    @blog_posts = BlogPost.limit(100)
  end
  
  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])  
    if @comment.save  
      NotificationMailer.notify_of_comment(@comment).deliver
      flash[:notice] = 'Thanks for the feedback!'  
      redirect_to :back
    else  
      flash[:error] = 'Your comment must have your name and a message to be posted.'
      redirect_to :back  
    end
  end
  
  def update
    @comment = Comment.find(params[:id])
    @comment.approve = params[:approve]
    if @comment.save
      if params[:approve] == 'true'
        flash[:success] = 'This comment has been approved.'
      else 
        flash[:success] = 'This comment has been unapproved.'
      end
      redirect_to :back
    else
      redirect_to :back
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:success] = 'The comment has been destroyed.'
    redirect_to :back
  end
  
  private
  
  def find_commentable  
    params.each do |name, value|  
      if name =~ /(.+)_id$/  
        return $1.classify.constantize.find(value)  
      end  
    end  
    nil  
  end
  
end