Rails.application.routes.draw do
  devise_for :hikers
  root to: 'mountains#index'
  resources :mountains, only: [:index, :new, :create, :show, :edit]
  resources :hikers, only: :show

end
