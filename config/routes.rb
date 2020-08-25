Rails.application.routes.draw do
  resources :cooks
  devise_for :users
  root to: 'cooks#index'
  get 'pages/home', to: 'pages#home'
end
