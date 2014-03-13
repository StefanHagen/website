class Admin::ProjectsController < AdminController
  before_filter :find_project, :only => [:show, :edit, :update, :destroy]

  def index
    @projects = Project.paginate(:page => params[:page])
  end

  def show

  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to([:admin, :projects])
    else
      render(:new)
    end
  end
  
  def edit
    
  end
  
  def update
    if @project.update_attributes(params[:project])
      redirect_to([:admin, :projects])
    else
      render(:edit)
    end
  end
  
  def destroy
    @project.destroy
    redirect_to([:admin, :projects])
  end
  
private

  def find_project
    @project = Project.find(params[:id])
  end
end
