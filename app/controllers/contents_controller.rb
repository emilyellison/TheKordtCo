class ContentsController < ApplicationController
  
  before_filter :redirect_if_not_admin
  
  def edit
    @content = Content.find(params[:id])
  end
  
  def update
    @content = Content.find(params[:id])
    if @content.update_attributes(params[:content])
      flash[:success] = 'Your content has been updated.'
      redirect_to manage_content_url
    else
      render :edit
    end
  end
  
  def manage
    @contents = Content.limit(100)
  end
  
end