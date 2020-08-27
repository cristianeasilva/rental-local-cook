Rails.application.routes.draw do
  resources :cooks
  devise_for :users

  resources :cooks, only: [:index, :show, :create, :new] do
    resources :orders
  end

  resources :orders, only: [:show, :destroy]

  root to: 'cooks#index'
  resources :users, only: :show
  get 'pages/home', to: 'pages#home'
end
