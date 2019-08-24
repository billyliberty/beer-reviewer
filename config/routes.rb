Rails.application.routes.draw do


  resources :users, only [:new, :create, :show]
  resources :reviews
  resources :beers do
    resources :reviews

  # Home page

  root "static#home"

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
