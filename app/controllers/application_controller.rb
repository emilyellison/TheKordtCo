require 'redcarpet/compat'

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :current_user
  
  helper_method :current_user
  
  def sign_in(user)
    session[:user_id] = user.id
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def redirect_if_not_signed_in
    if current_user.nil?
      flash[:error] = 'You must be signed in to perform that action.'
      redirect_to sign_in_url
    end
  end
  
  def redirect_if_not_admin
    if current_user.nil? || current_user.admin == false
      flash[:error] = 'You were not authorized to perform that action.'
      redirect_to root_url
    end
  end
  
end
