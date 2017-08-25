Rails.application.routes.draw do
  get "users/new"
  root "static_pages#index"

  resources :microposts
  resources :users
  resources :orders, only: [:create]
end
