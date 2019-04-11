Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "welcome#index"

  post '/data', to: 'devices#create'
  post '/passive', to: 'devices#create'
  get '/passive', to: 'devices#create'

end
