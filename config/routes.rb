Rails.application.routes.draw do
  get 'static_pages/home'

  resources :microposts
  resources :users
  root "users#index"
end
