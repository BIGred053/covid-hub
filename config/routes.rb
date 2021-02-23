Rails.application.routes.draw do
  devise_for :users

  resources :registration_forms
  resources :vaccine_registrations

  root to: 'home#index'
end
