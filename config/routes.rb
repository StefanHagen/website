Website::Application.routes.draw do

  namespace :admin do

    resources :posts

    root :to => "pages#dashboard"

  end

  resources :posts

  get "blog" => "pages#blog", :as => :blog
  get "about" => "pages#about", :as => :about

  root :to => "pages#blog"

end
