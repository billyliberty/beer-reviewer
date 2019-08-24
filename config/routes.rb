Rails.application.routes.draw do

  root "static#home"
  resources :users
  resources :reviews
  resources :beers

  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  delete '/session', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
