class Admin::SettingsController < AdminController
  before_filter :find_setting, :only => [:show, :edit, :update, :destroy]

  def index
    @settings = Setting.paginate(:page => params[:page])
  end

  def show

  end
  
  def new
    @setting = Setting.new
  end
  
  def create
    @setting = Setting.new(params[:setting])
    if @setting.save
      redirect_to([:admin, :settings])
    else
      render(:new)
    end
  end
  
  def edit
    
  end
  
  def update
    if @setting.update_attributes(params[:setting])
      redirect_to([:admin, :settings])
    else
      render(:edit)
    end
  end
  
  def destroy
    @setting.destroy
    redirect_to([:admin, :settings])
  end
  
private

  def find_setting
    @setting = Setting.find(params[:id])
  end
end
