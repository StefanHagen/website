class Admin::CategoriesController < AdminController
  before_filter :find_category, :only => [:show, :edit, :update, :destroy]

  def index
    @categories = Category.paginate(:page => params[:page])
  end

  def show

  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to([:admin, :categories])
    else
      render(:new)
    end
  end

  def edit

  end

  def update
    if @category.update_attributes(params[:category])
      redirect_to([:admin, :categories])
    else
      render(:edit)
    end
  end

  def destroy
    @category.destroy
    redirect_to([:admin, :categories])
  end

private

  def find_category
    @category = Category.find(params[:id])
  end

end
