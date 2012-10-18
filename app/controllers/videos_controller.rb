class VideosController < ApplicationController
  
  before_filter :redirect_if_not_admin, only: [ :new, :create, :edit, :update, :destroy ]
  
  def writer
    if @current_user.present? && @current_user.admin == true
      @videos = Video.written
    else
      @videos = Video.written.ready_for_display
    end
    if params[:id].nil?
      @video = @videos.first
    else
      @video = @videos.find(params[:id])
    end
  end
  
  def director
    if @current_user.present? && @current_user.admin == true
      @videos = Video.directed
    else
      @videos = Video.directed.ready_for_display
    end
    if params[:id].nil?
      @video = @videos.first
    else
      @video = @videos.find(params[:id])
    end
  end
  
  def producer
    if @current_user.present? && @current_user.admin == true
      @videos = Video.produced
    else
      @videos = Video.produced.ready_for_display
    end
    if params[:id].nil?
      @video = @videos.first
    else
      @video = @videos.find(params[:id])
    end
  end
  
  def new
    @video = Video.new
  end
  
  def create
    @video = Video.new(params[:video])
    if @video.save
      flash[:success] = 'Your video has been created.'
      redirect_to user_url(@current_user)
    else
      render :new
    end
  end
  
  def edit
    @video = Video.find(params[:id])
  end
  
  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(params[:video])
      flash[:success] = 'Your video has been updated.'
      redirect_to user_url(@current_user)
    else
      render :edit
    end
  end
  
  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:success] = 'Your video has been destroyed.'
    redirect_to user_url(@current_user)
  end
  
end