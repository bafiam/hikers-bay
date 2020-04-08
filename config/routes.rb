Rails.application.routes.draw do

  
  get 'profiles/create'
  get 'profile/new'
  get 'profile/create'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/profile', to: 'profiles#new'
  post '/profile', to: 'profiles#create'

  resources :profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
