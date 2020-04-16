Rails.application.routes.draw do

  
  root 'opinions#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/timeline',  to: 'opinions#index'
  post '/timeline',  to: 'opinions#create'


  resources :relationships , only: [:create, :destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
