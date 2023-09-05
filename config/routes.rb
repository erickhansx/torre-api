Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy]
  resources :searches, only: [:create, :index]
end