Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'setups', to: 'setups#index'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  resources :setups
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
