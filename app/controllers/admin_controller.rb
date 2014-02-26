class AdminController < ApplicationController
  before_filter :authorize_admin

private

  helper_method :current_admin
  def current_admin
    @current_admin = Administrator.find_by_id(session[:admin_id]) if session[:admin_id]
  end

  def authorize_admin
    redirect_to :admin_login unless current_admin    
  end
  
end
