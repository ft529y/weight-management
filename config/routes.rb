Rails.application.routes.draw do
  devise_for :users
  root to: 'weights#index'
  resources :weights, only: [:new, :create]
  resources :users, only: [:show]
end
