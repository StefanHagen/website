class PagesController < ApplicationController

  def blog
    @posts = Post.all
  end

end
