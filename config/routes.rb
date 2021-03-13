Rails.application.routes.draw do
  resources :mountains, only: :index
end
