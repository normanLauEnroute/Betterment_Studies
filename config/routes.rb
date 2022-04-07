Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friendships', to: 'users#friendships'
  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'users#search'
  get 'update_list', to: 'stocks#update'
  resources :friendships, only: [:create, :destroy]
  resources :users, only: [:show]
  end
