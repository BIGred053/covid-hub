Rails.application.routes.draw do
  devise_for :users
  resources :registrations

  root to: 'home#index'
end
