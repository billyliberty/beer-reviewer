Rails.application.routes.draw do

  root "static#home"

  resources :users
  resources :reviews
  resources :beers

  # login
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  # logout 
  delete '/logout', to: 'sessions#destroy'

  # signup
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
