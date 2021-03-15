Rails.application.routes.draw do
  root to: 'mountains#index'
  resources :mountains, [:index, :new, :create]
end
