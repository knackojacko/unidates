Rails.application.routes.draw do
  


  get 'users/new'
  get    '/adminreports',    to: 'reports#admin_index'
  root 'startup#index'
  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  post '/signup',  to: 'users#create'
  
  delete '/logout',  to: 'sessions#destroy'
 
  resources :quest
  resources :users
  resources :questionnaires
  resources :reports


end
