Website::Application.routes.draw do

  namespace :admin do

    get "login"  => "sessions#new",     :as => :login
    post "login" => "sessions#create",  :as => :login
    get "logout" => "sessions#destroy", :as => :logout
    get "dashboard" => "pages#dashboard", :as => :dashboard

    resources :posts do
      resources :categoeries
    end
    resources :categories
    resources :projects
    resources :settings

    root :to => "pages#dashboard"

  end

  resources :posts

  get "blog" => "pages#blog", :as => :blog
  get "about" => "pages#about", :as => :about

  root :to => "pages#blog"

end
