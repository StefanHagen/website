class Admin::PostsController < AdminController
  before_filter :find_post, :only => [:show, :edit, :update, :destroy]

  def index
    @posts = Post.paginate(:page => params[:page])
  end

  def show

  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to([:admin, :posts])
    else
      render(:new)
    end
  end
  
  def edit
    
  end
  
  def update
    if @post.update_attributes(params[:post])
      redirect_to([:admin, :posts])
    else
      render(:edit)
    end
  end
  
  def destroy
    @post.destroy
    redirect_to([:admin, :posts])
  end
  
private

  def find_post
    @post = Post.find(params[:id])
  end

end
