Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users

  resources :cooks do
    resources :orders
  end

  resources :orders, only: [:show, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: :show

  resources :reviews, only: :destroy

  root to: 'cooks#index'
end
