class Admin::SessionsController < AdminController
  skip_before_filter :authorize_admin, :except => :destroy
  
  def new
  end
  
  def create
    admin = Administrator.find_by_email(params[:email])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to([:admin, :root], :gflash => :success)
    else
      render :new
    end
  end
  
  def destroy
    session[:admin_id] = nil
    redirect_to([:admin, :login], :gflash => :success)
  end
end
