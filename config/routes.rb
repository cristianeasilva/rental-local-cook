Rails.application.routes.draw do
  resources :cooks
  devise_for :users

  resources :cooks, only: [:index, :show, :create, :new] do
    resources :orders do
    end
  end

  root to: 'cooks#index'
  
  get 'pages/home', to: 'pages#home'
end
