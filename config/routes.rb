Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'startup#index'
  get    '/signup',  to: 'users#new'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
