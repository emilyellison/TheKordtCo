class InquiriesController < ApplicationController
  
  before_filter :redirect_if_not_admin, only: [ :index, :show ]
  
  def index
    @inquiries = Inquiry.limit(100)
  end
  
  def new
    @inquiry = Inquiry.new
  end
  
  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.save
      HireMailer.hire_me(@inquiry).deliver
      flash[:success] = "Thanks for your e-mail, and I'll be in touch shortly."
      redirect_to new_inquiry_url
    else
      render :new
    end
  end
  
  def show
    @inquiry = Inquiry.find(params[:id])
  end

end