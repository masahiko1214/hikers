Rails.application.routes.draw do
  devise_for :hikers
  root to: 'mountains#index'
  resources :mountains, only: [:index, :new, :create, :show, :edit] do
  resources :trekkings, only: [:index, :new]
  end
  resources :descriptions,only: [:index, :new]
  resources :hikers, only: :show
end
