class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    @user = User.find_by_email(params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      sign_in @user
      flash[:success] = "Welcome back, #{@user.first_name}!"
      redirect_to root_url
    else
      flash.now[:error] = 'Invalid e-mail/password combination.'
      render :new
    end
  end
  
  def destroy
    reset_session
    flash[:notice] = 'Come back soon!'
    redirect_to root_url
  end
  
end