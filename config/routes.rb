Rails.application.routes.draw do
  get 'sessions/new'
  #get 'users/new'
  root 'static_pages#home'
  get 'static_pages/home'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do
    member do
      get :following, :followers
    end
  end

  #resources :users
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
