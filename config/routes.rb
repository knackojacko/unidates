Rails.application.routes.draw do


    get 'users/new'
    get '/adminreports', to: 'reports#admin_index'
    root 'startup#index'
    get 'sessions/new'
    get '/signup', to: 'users#new'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    post '/signup', to: 'users#create'

    delete '/logout', to: 'sessions#destroy'

    resources :users do
        member do
            get :ban
            get :unban
            get :add_like
            get :add_unlike
            get :add_match
            get :confirm_email
            post :additional_user_information
        end
    end
    

    resources :questionnaires
    resources :reports
    resources :chats 



    resources :conversations, only: [:create] do
        member do
            post :close
        end

        resources :messages, only: [:create]
    end
end