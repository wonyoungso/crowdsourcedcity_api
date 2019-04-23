Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "welcome#index"

  post '/data', to: 'scanners#create'
  post '/passive', to: 'scanners#create'
  
  namespace :api do 
    resources :devices_scanners do 
      collection do
        get :wifi
        get :furniture
      end
    end

  end

  namespace :admin do
    resources :users
    resources :scanners
    resources :devices do
      collection do 
        get :wifi
        get :bluetooth
        get :furniture
        get :search
      end
    end

    resources :devices_scanners

    match 'login' => 'sessions#new', :via => :get
    match 'login' => 'sessions#create', :via => :post
    match 'logout' => 'sessions#destroy', :via => :delete
    
    root :to => 'users#index'
  end
end
