class UsersController < ApplicationController
  
  before_filter :redirect_if_not_signed_in
  before_filter :redirect_if_not_admin
  
  def show
    @user = User.find(params[:id])
  end
  
end