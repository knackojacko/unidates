Rails.application.routes.draw do
  

  root 'startup#index'
  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/createQuestion', to: 'questions#new'
  get    '/createAnswer', to: 'answers#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
 
  resources :answers 
  resources :users
  resources :questions



end
