Rails.application.routes.draw do
  devise_for :users

  resources :cooks, only: [:index, :show, :create, :new] do
    resources :orders do
    end
  end

  root to: 'cooks#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages/home', to: 'pages#home'
end
