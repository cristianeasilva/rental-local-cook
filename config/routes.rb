Rails.application.routes.draw do
  devise_for :users
  root to: 'cooks#index'
  resources :cooks, only: [:index, :show, :create, :new] do
    resources :orders do
      resources :reviews
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages/home', to: 'pages#home'
end
