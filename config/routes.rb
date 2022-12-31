Rails.application.routes.draw do
  get 'comments/index'
  get 'users/index'
  devise_for :users
  root to: "prototypes#index"
  get 'prototypes/index'
  post 'users/sign_up', to: 'prototypes#create'
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end