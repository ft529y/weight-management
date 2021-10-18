Rails.application.routes.draw do
  devise_for :users
  root to: 'weights#index'
  # resources :weights, only: [:show]
  resources :user, only: [:show]
end
