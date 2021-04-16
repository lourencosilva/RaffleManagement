Rails.application.routes.draw do
  devise_for :users
  get "home/index"
  resources :prizes
  resources :tickets
  resources :raffles
  resources :kinds
  root "home#index"
end
