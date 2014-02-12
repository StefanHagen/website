Website::Application.routes.draw do

  resources :posts

  get "blog" => "pages#blog", :as => :blog
  get "about" => "pages#about", :as => :about

  root :to => "pages#blog"

end
