Auth0::Application.routes.draw do
  namespace :api do

    resources :posts

    resources :photos

  end

  get "welcome/index"

  
  root :to => 'welcome#index'

  match "/*ember" => "welcome#index"

end
