Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friendships', to: 'users#friendships'
  get 'search_stock', to: 'stocks#search'
  end
