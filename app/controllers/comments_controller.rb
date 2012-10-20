class CommentsController < ApplicationController
  
  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])  
    if @comment.save  
      flash[:notice] = 'Thanks for the feedback!'  
      redirect_to :back
    else  
      flash[:error] = 'Your comment must have your name and a message to be posted.'
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