Rails.application.routes.draw do
  

  resources :questonnaires
  root 'startup#index'
  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
 
  resources :quest
  resources :users



end
