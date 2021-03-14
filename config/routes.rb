Rails.application.routes.draw do
  root to: 'mountains#index'
  resources :mountains, only: :index
end
