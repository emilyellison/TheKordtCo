class TracksController < ApplicationController
  
  before_filter :redirect_if_not_admin, only: [ :new, :create, :edit, :update, :destroy, :manage ]
  
  def index
    if @current_user.present? && @current_user.admin == true
      @tracks = Track.limit(100)
    else
      @tracks = Track.limit(100).ready_for_display
    end
  end
  
  def new
    @track = Track.new
  end
  
  def create
    @track = Track.new(params[:track])
    if @track.save
      flash[:success] = 'Your track has been created.'
      redirect_to manage_tracks_url
    else
      render :new
    end
  end
  
  def edit
    @track = Track.find(params[:id])
  end
  
  def show
    @track = Track.find(params[:id])
  end
  
  def update
    @track = Track.find(params[:id])
    if @track.update_attributes(params[:track])
      flash[:success] = 'Your track has been updated.'
      redirect_to manage_tracks_url
    else
      render :edit
    end
  end
  
  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    flash[:success] = 'Your track has been destroyed.'
    redirect_to manage_tracks_url
  end
  
  def manage
    @tracks = Track.limit(100)
  end
  
end