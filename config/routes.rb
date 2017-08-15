Rails.application.routes.draw do
  


  root 'startup#index'
  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
 
  resources :quest
  resources :users
  resources :questionnaires



end
