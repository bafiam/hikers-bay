Rails.application.routes.draw do

  
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'profiles/:id/edit', to: 'users#edit'
  patch 'profiles/:id', to: 'users#update'

  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
