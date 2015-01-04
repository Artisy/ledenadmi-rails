class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  def index
    render 'layouts/index.html.erb'
  end
  
  
  def dashboard 
    render 'layouts/dashboard.html.erb'
    @groups = Group.all
    @members = Member.all
  end
end


