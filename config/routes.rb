Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "performances/search"
  resources :performances, only: %i[show new create]
  put "users/settings"

  resources :bookings, only: [:index, :create]
end
