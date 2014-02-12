Website::Application.routes.draw do

  resources :posts

  root :to => "pages#blog"

end
