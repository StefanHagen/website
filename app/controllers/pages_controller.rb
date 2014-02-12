class PagesController < ApplicationController

  def blog
    @posts = Post.all
  end

  def about

  end

end
